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

echo "Pre-caching ios artifacts, such as the Flutter.framework"
"${localSdkPath}/bin/flutter" precache --no-web --no-linux --no-windows --no-fuchsia --no-android

echo "Fetching dependencies and building 'flutter_module'."
pushd add_to_app/flutter_module
"${localSdkPath}/bin/flutter" packages get
"${localSdkPath}/bin/flutter" build ios-framework --output=../ios_using_prebuilt_module/Flutter
popd

echo "Fetching dependencies for 'flutter_module_using_plugin'."
pushd add_to_app/flutter_module_using_plugin
"${localSdkPath}/bin/flutter" packages get
popd

declare -a IOS_PROJECT_PATHS=(
    "add_to_app/ios_fullscreen" \
    "add_to_app/ios_using_plugin" \
    "add_to_app/ios_using_prebuilt_module" \
)

declare -a IOS_PROJECT_NAMES=(
    "IOSFullScreen" \
    "IOSUsingPlugin" \
    "IOSUsingPrebuiltModule" \
)

for ((i=0; i<${#IOS_PROJECT_PATHS[@]}; i++))
do
    echo "== Testing '${IOS_PROJECT_PATHS[$i]}' on Flutter's $FLUTTER_VERSION channel =="
    pushd "${IOS_PROJECT_PATHS[$i]}"

    pod install

    xcodebuild -workspace "${IOS_PROJECT_NAMES[$i]}.xcworkspace" \
    -scheme "${IOS_PROJECT_NAMES[$i]}" CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
    CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- CONFIGURATION=Debug

    xcodebuild -workspace "${IOS_PROJECT_NAMES[$i]}.xcworkspace" \
    -scheme "${IOS_PROJECT_NAMES[$i]}" CODE_SIGNING_ALLOWED=NO CODE_SIGNING_REQUIRED=NO \
    CODE_SIGN_IDENTITY=- EXPANDED_CODE_SIGN_IDENTITY=- CONFIGURATION=Release

    popd
done

echo "-- Success --"
