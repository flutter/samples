#!/bin/bash

set -e

# Backs up one directory at a time, looking for one called "flutter". Once it
# finds that directory, an absolute path to it is returned.
function getFlutterPath() {
    local path=""
    local counter=0

    while [[ "${counter}" -lt 10 ]]; do
        [ -d "${path}flutter" ] && echo "$(pwd)/${path}flutter" && return 0
        let counter++
        path="${path}../"
    done
}

readonly LOCAL_SDK_PATH=$(getFlutterPath)

if [ -z "${LOCAL_SDK_PATH}" ]
then
    echo "Failed to find the Flutter SDK!"
    exit 1
fi

echo "Flutter SDK found at ${LOCAL_SDK_PATH}"

declare -ar PROJECT_NAMES=(
    "add_to_app/flutter_module" \
    "add_to_app/flutter_module_using_plugin" \
    "animations" \
    "gallery/gallery" \
    "flutter_maps_firestore" \
    "isolate_example" \
    "jsonexample" \
    "place_tracker" \
    "platform_design"
    "platform_view_swift" \
    "provider_counter" \
    "provider_shopper" \
    "veggieseasons" \
)

for PROJECT_NAME in "${PROJECT_NAMES[@]}"
do
    echo "== Testing '${PROJECT_NAME}' on Flutter's ${FLUTTER_VERSION} channel =="
    pushd "${PROJECT_NAME}"

    # Run the analyzer to find any static analysis issues.
    "${LOCAL_SDK_PATH}/bin/flutter" analyze

    # Run the formatter on all the dart files to make sure everything's linted.
    "${LOCAL_SDK_PATH}/bin/flutter" format -n --set-exit-if-changed .

    # Run the actual tests.
    "${LOCAL_SDK_PATH}/bin/flutter" test

    popd
done

# Test that the code segment widgets that get displayed in the Flutter Material
# gallery have been generated using the latest gallery code. Also test that
# the localization scripts have been run, so that they are up to date for the
# gallery.
pushd gallery/gallery
echo "Run code segments check for 'gallery/gallery'."
"${LOCAL_SDK_PATH}/bin/flutter" pub run grinder verify-code-segments
echo "Run localization check for 'gallery/gallery'."
"${LOCAL_SDK_PATH}/bin/flutter" pub run grinder verify-l10n
popd

echo "-- Success --"
