#!/bin/sh
set -e
set -u
set -o pipefail

function on_error {
  echo "$(realpath -mq "${0}"):$1: error: Unexpected failure"
}
trap 'on_error $LINENO' ERR

if [ -z ${FRAMEWORKS_FOLDER_PATH+x} ]; then
  # If FRAMEWORKS_FOLDER_PATH is not set, then there's nowhere for us to copy
  # frameworks to, so exit 0 (signalling the script phase was successful).
  exit 0
fi

# This protects against multiple targets copying the same framework dependency at the same time. The solution
# was originally proposed here: https://lists.samba.org/archive/rsync/2008-February/020158.html
RSYNC_PROTECT_TMP_FILES=(--filter "P .*.??????")

ARTIFACT_LIST_FILE="${BUILT_PRODUCTS_DIR}/cocoapods-artifacts-${CONFIGURATION}.txt"
cat > $ARTIFACT_LIST_FILE

BCSYMBOLMAP_DIR="BCSymbolMaps"

record_artifact()
{
  echo "$1" >> $ARTIFACT_LIST_FILE
}

install_artifact()
{
  local source="$1"
  local destination="$2"
  local record=${3:-false}

  # Use filter instead of exclude so missing patterns don't throw errors.
  echo "rsync --delete -av "${RSYNC_PROTECT_TMP_FILES[@]}" --links --filter \"- CVS/\" --filter \"- .svn/\" --filter \"- .git/\" --filter \"- .hg/\" \"${source}\" \"${destination}\""
  rsync --delete -av "${RSYNC_PROTECT_TMP_FILES[@]}" --links --filter "- CVS/" --filter "- .svn/" --filter "- .git/" --filter "- .hg/" "${source}" "${destination}"

  if [[ "$record" == "true" ]]; then
    artifact="${destination}/$(basename "$source")"
    record_artifact "$artifact"
  fi
}

# Copies a framework to derived data for use in later build phases
install_framework()
{
  if [ -r "${BUILT_PRODUCTS_DIR}/$1" ]; then
    local source="${BUILT_PRODUCTS_DIR}/$1"
  elif [ -r "${BUILT_PRODUCTS_DIR}/$(basename "$1")" ]; then
    local source="${BUILT_PRODUCTS_DIR}/$(basename "$1")"
  elif [ -r "$1" ]; then
    local source="$1"
  fi

  local record_artifact=${2:-true}
  local destination="${CONFIGURATION_BUILD_DIR}"

  if [ -L "${source}" ]; then
    echo "Symlinked..."
    source="$(readlink "${source}")"
  fi

  install_artifact "$source" "$destination" "$record_artifact"

  if [ -d "${source}/${BCSYMBOLMAP_DIR}" ]; then
    # Locate and install any .bcsymbolmaps if present
    find "${source}/${BCSYMBOLMAP_DIR}/" -name "*.bcsymbolmap"|while read f; do
      install_artifact "$f" "$destination" "true"
    done
  fi
}

install_xcframework() {
  local basepath="$1"
  local dsym_folder="$2"
  local embed="$3"
  shift
  local paths=("$@")

  # Locate the correct slice of the .xcframework for the current architectures
  local target_path=""
  local target_arch="$ARCHS"

  # Replace spaces in compound architectures with _ to match slice format
  target_arch=${target_arch// /_}

  local target_variant=""
  if [[ "$PLATFORM_NAME" == *"simulator" ]]; then
    target_variant="simulator"
  fi
  if [[ ! -z ${EFFECTIVE_PLATFORM_NAME+x} && "$EFFECTIVE_PLATFORM_NAME" == *"maccatalyst" ]]; then
    target_variant="maccatalyst"
  fi
  for i in ${!paths[@]}; do
    if [[ "${paths[$i]}" == *"$target_arch"* ]] && [[ "${paths[$i]}" == *"$target_variant"* ]]; then
      # Found a matching slice
      echo "Selected xcframework slice ${paths[$i]}"
      target_path=${paths[$i]}
      break;
    fi
  done

  if [[ -z "$target_path" ]]; then
    echo "warning: [CP] Unable to find matching .xcframework slice in '${paths[@]}' for the current build architectures ($ARCHS)."
    return
  fi

  install_framework "$basepath/$target_path" "$embed"

  if [[ -z "$dsym_folder" || ! -d "$dsym_folder" ]]; then
    return
  fi

  dsyms=($(ls "$dsym_folder"))

  local target_dsym=""
  for i in ${!dsyms[@]}; do
    install_artifact "$dsym_folder/${dsyms[$i]}" "$CONFIGURATION_BUILD_DIR" "true"
  done
}


if [[ "$CONFIGURATION" == "Debug" ]]; then
  install_xcframework "${PODS_ROOT}/../../multiple_flutters_module/.ios/Flutter/engine/Flutter.xcframework" "" "true" "ios-armv7_arm64/Flutter.framework" "ios-x86_64-simulator/Flutter.framework"
fi
if [[ "$CONFIGURATION" == "Release" ]]; then
  install_xcframework "${PODS_ROOT}/../../multiple_flutters_module/.ios/Flutter/engine/Flutter.xcframework" "" "true" "ios-armv7_arm64/Flutter.framework" "ios-x86_64-simulator/Flutter.framework"
fi

echo "Artifact list stored at $ARTIFACT_LIST_FILE"

cat "$ARTIFACT_LIST_FILE"
