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

localSdkPath=$(getFlutterPath)

if [ -z "$localSdkPath" ]
then
    echo "Failed to find the Flutter SDK!."
    exit 1
fi

echo "Flutter SDK found at ${localSdkPath}"

echo "Fetching dependencies and building 'flutter_module'."
pushd add_to_app/flutter_module
"${localSdkPath}/bin/flutter" packages get
"${localSdkPath}/bin/flutter" build aar
popd

echo "Fetching dependencies for 'flutter_module_using_plugin'."
pushd add_to_app/flutter_module_using_plugin
"${localSdkPath}/bin/flutter" packages get
popd

declare -a ANDROID_PROJECT_NAMES=(
    "add_to_app/android_fullscreen" \
    "add_to_app/android_using_plugin" \
    "add_to_app/android_using_prebuilt_module" \
)

for PROJECT_NAME in "${ANDROID_PROJECT_NAMES[@]}"
do
    echo "== Testing '${PROJECT_NAME}' on Flutter's $FLUTTER_VERSION channel =="
    pushd "${PROJECT_NAME}"

    ./gradlew --stacktrace assembleDebug
    ./gradlew --stacktrace assembleRelease

    popd
done

echo "-- Success --"
