#!/bin/bash

set -e

# Configuration
LOGS_DIR="logs"
LOG_FILE="$LOGS_DIR/flutter_update_$(date +%Y-%m-%d_%H-%M-%S).log"
TEMP_LOG="/tmp/flutter_temp_$$.log"

# Create logs directory if it doesn't exist
mkdir -p "$LOGS_DIR"

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Logging function
log() {
    echo -e "$1" | tee -a "$LOG_FILE"
}

log_error() {
    echo -e "${RED}ERROR: $1${NC}" | tee -a "$LOG_FILE"
}

log_warning() {
    echo -e "${YELLOW}WARNING: $1${NC}" | tee -a "$LOG_FILE"
}

log_info() {
    echo -e "${BLUE}INFO: $1${NC}" | tee -a "$LOG_FILE"
}

# Function to check if directory is a Flutter project
is_flutter_project() {
    local dir="$1"
    [[ -f "$dir/pubspec.yaml" ]] && grep -q "flutter:" "$dir/pubspec.yaml"
}

# Function to get current Flutter version
get_flutter_version() {
    flutter --version --machine | grep '"frameworkVersion"' | cut -d'"' -f4
}

# Function to update SDK constraints in pubspec.yaml
update_sdk_constraints() {
    local project_dir="$1"
    local current_version="$2"
    local pubspec="pubspec.yaml"
    
    if [[ ! -f "$pubspec" ]]; then
        log_error "pubspec.yaml not found in $project_dir"
        return 1
    fi
    
    # Extract major and minor version numbers
    local major=$(echo "$current_version" | cut -d'.' -f1)
    local minor=$(echo "$current_version" | cut -d'.' -f2)
    local next_major=$((major + 1))
    
    # Create SDK constraint string
    local sdk_constraint=">=$current_version <$next_major.0.0"
    
    # Update only the Dart SDK constraint under environment: section
    # This specifically targets the sdk: line under environment: and not flutter dependencies
    if grep -A5 "^environment:" "$pubspec" | grep -q "sdk:"; then
        # Use perl to update only the environment sdk constraint
        perl -i -pe '
            BEGIN { $in_env = 0; }
            if (/^environment:/) { $in_env = 1; }
            elsif (/^\w/ && !/^\s/) { $in_env = 0; }
            if ($in_env && /(\s+sdk:\s*)['\''"]?[^'\''"]*['\''"]?/) {
                s/(\s+sdk:\s*)['\''"]?[^'\''"]*['\''"]?/$1'\'''"$sdk_constraint"'\''/;
            }
        ' "$pubspec"
        log_info "Updated Dart SDK constraint in $project_dir to: $sdk_constraint"
    else
        log_warning "No Dart SDK constraint found under environment: in $project_dir/pubspec.yaml"
        return 1
    fi
}

# Function to process a single Flutter project
process_project() {
    local project_dir="$1"
    local project_name=$(basename "$project_dir")
    
    log ""
    log "========================================="
    log "Processing project: $project_name"
    log "========================================="
    
    cd "$project_dir"
    
    # Get current Flutter version for SDK constraints
    local flutter_version
    flutter_version=$(get_flutter_version)
    if [[ $? -ne 0 ]]; then
        log_error "Failed to get Flutter version for $project_name"
        return 1
    fi
    
    # Update SDK constraints
    log_info "Updating SDK constraints to use Flutter $flutter_version"
    if ! update_sdk_constraints "$project_dir" "$flutter_version"; then
        log_error "Failed to update SDK constraints for $project_name"
        return 1
    fi
    
    # Update dependencies
    log_info "Updating dependencies..."
    if ! flutter pub upgrade > "$TEMP_LOG" 2>&1; then
        log_error "Failed to upgrade dependencies for $project_name"
        cat "$TEMP_LOG" >> "$LOG_FILE"
        return 1
    fi
    
    # Run pub get
    log_info "Running pub get..."
    if ! flutter pub get > "$TEMP_LOG" 2>&1; then
        log_error "Failed to run pub get for $project_name"
        cat "$TEMP_LOG" >> "$LOG_FILE"
        return 1
    fi
    
    # Run dart analyze and capture output
    log_info "Running dart analyze..."
    if ! dart analyze > "$TEMP_LOG" 2>&1; then
        local exit_code=$?
        log_error "Dart analyze found issues in $project_name (exit code: $exit_code)"
        
        # Filter and log only errors, warnings, and infos (not success messages)
        if grep -E "(error|warning|info):" "$TEMP_LOG" > /dev/null; then
            log "Analyze results for $project_name:"
            grep -E "(error|warning|info):" "$TEMP_LOG" >> "$LOG_FILE"
        fi
        
        # Check if there are fatal errors (errors that would prevent compilation)
        if grep -E "^error:" "$TEMP_LOG" > /dev/null; then
            log_error "Fatal errors found in $project_name, skipping further processing"
            return 1
        fi
    else
        # Even on success, check for warnings and infos
        if grep -E "(warning|info):" "$TEMP_LOG" > /dev/null; then
            log "Analyze results for $project_name:"
            grep -E "(warning|info):" "$TEMP_LOG" >> "$LOG_FILE"
        fi
    fi
    
    # Run dart format
    log_info "Running dart format..."
    if ! dart format . > "$TEMP_LOG" 2>&1; then
        log_error "Failed to format code for $project_name"
        cat "$TEMP_LOG" >> "$LOG_FILE"
        # Continue anyway, formatting errors are not fatal
    fi
    
    # Run tests
    log_info "Running tests..."
    if ! flutter test > "$TEMP_LOG" 2>&1; then
        local exit_code=$?
        log_error "Tests failed for $project_name (exit code: $exit_code)"
        
        # Log test failures
        if grep -E "(FAILED|ERROR|Exception)" "$TEMP_LOG" > /dev/null; then
            log "Test failures for $project_name:"
            grep -E "(FAILED|ERROR|Exception)" "$TEMP_LOG" >> "$LOG_FILE"
        fi
        
        return 1
    fi
    
    log_info "Successfully processed $project_name"
    return 0
}

# Main execution
main() {
    local original_dir="$PWD"
    log "Flutter Monorepo Update Script Started: $(date)"
    log "Log file: $LOG_FILE"
    
    # Check if Flutter is installed
    if ! command -v flutter &> /dev/null; then
        log_error "Flutter is not installed or not in PATH"
        exit 1
    fi
    
    # Upgrade Flutter SDK
    log ""
    log "========================================="
    log "Upgrading Flutter SDK"
    log "========================================="
    
    if ! flutter upgrade > "$TEMP_LOG" 2>&1; then
        log_error "Failed to upgrade Flutter SDK"
        cat "$TEMP_LOG" >> "$LOG_FILE"
        exit 1
    fi
    
    local flutter_version
    flutter_version=$(get_flutter_version)
    log_info "Flutter upgraded to version: $flutter_version"
    
    # Find all Flutter projects in the current directory
    local projects=()
    for dir in */; do
        if [[ -d "$dir" ]] && is_flutter_project "$dir"; then
            projects+=("$dir")
        fi
    done
    
    if [[ ${#projects[@]} -eq 0 ]]; then
        log_warning "No Flutter projects found in the current directory"
        exit 0
    fi
    
    log_info "Found ${#projects[@]} Flutter project(s): ${projects[*]}"
    
    # Process each project
    local success_count=0
    local failure_count=0
    local failed_projects=()
    
    for project in "${projects[@]}"; do
        if process_project "$project"; then
            ((success_count++))
        else
            ((failure_count++))
            failed_projects+=("$(basename "$project")")
        fi
        
        # Return to root directory
        cd "$original_dir"
    done
    
    # Summary
    log ""
    log "========================================="
    log "Update Summary"
    log "========================================="
    log_info "Total projects processed: ${#projects[@]}"
    log_info "Successful: $success_count"
    
    if [[ $failure_count -gt 0 ]]; then
        log_error "Failed: $failure_count"
        log_error "Failed projects: ${failed_projects[*]}"
    fi
    
    log ""
    log "Flutter Monorepo Update Script Completed: $(date)"
    
    # Cleanup
    rm -f "$TEMP_LOG"
    
    # Exit with error code if any projects failed
    if [[ $failure_count -gt 0 ]]; then
        exit 1
    fi
}

# Run main function
main "$@"