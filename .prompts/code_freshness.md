# Code Health and Style Guide Analysis

This document provides instructions for an AI assistant to analyze this repository against the Dart and Flutter style guide (`.prompts/llm.md`) and log opportunities for improvement.

## Workflow

The AI assistant must follow these steps exactly:

### 1. Setup

1.  **Create Log Directory**: If it does not already exist, create a directory named `logs` in the repository root.
2.  **Create Log File**: Create a new file inside the `logs` directory named `YYYY-MM-DD_HH-MM-SS-freshness-scores.md`, where `YYYY-MM-DD_HH-MM-SS` is the current timestamp.

### 2. Project Identification

1.  **Find Projects**: Identify all sample projects by searching for `pubspec.yaml` files within the repository. Each directory containing a `pubspec.yaml` should be considered a separate project.
2.  **Create a Queue**: Compile a list of the absolute paths to these project directories to process them one by one.

### 3. Analysis Loop

For each project directory identified in the previous step, perform the following:

1.  **Check for Dart Files**:
    *   Verify that the project directory contains at least one `.dart` file.
    *   If not, add an entry to the log file stating that the project was skipped for this reason and proceed to the next project.

2.  **Analyze Git History**:
    *   Run `git log` to find the most recent commit to a `.dart` file within that project's directory made by a human (i.e., not a bot).
    *   **Command**:
        ```bash
        git log -1 --author='^(?!.*bot).*$' --pretty="format:%ad" --date=short -- ./**/*.dart
        ```
        *(Note: This command should be run from within the project's directory).*
    *   **Handle No Commits**: If the command returns no output, note "No human commits found" for the log. If there are no commits at all, note that as well.

3.  **Read and Assess Code**:
    *   Read all `.dart` files within the project directory (recursively).
    *   Compare the code against the rules and patterns defined in `.prompts/llm.md`.
    *   The assessment must focus on:
        *   Code organization and structure.
        *   Adherence to naming conventions.
        *   Proper use of Flutter and Dart patterns (e.g., `const` constructors, collection literals).
        *   State management best practices.
        *   Clarity, readability, and documentation.

4.  **Log Findings**:
    *   Append a new entry to the log file using the following Markdown template. Ensure all fields are filled out.

    ```markdown
    ---
    **Sample**: `path/to/sample`
    **Last Human Commit**: `YYYY-MM-DD` or "No human commits found"
    **Assessment Date**: `YYYY-MM-DD`

    **Summary of Style Guide Adherence**:
    A brief, one-paragraph summary of how well the project adheres to the style guide. Mention its strengths and weaknesses in general terms.

    **Opportunities for Improvement**:
    - A concrete, actionable bullet point describing a specific area for improvement.
    - Another actionable bullet point.
    - A third bullet point, if applicable. Focus on providing clear, specific, and helpful recommendations.
    ---
    ```