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

declare -a PROJECT_NAMES=(
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
    echo "== Testing '${PROJECT_NAME}' on Flutter's $FLUTTER_VERSION channel =="
    pushd "${PROJECT_NAME}"

    # Run the analyzer to find any static analysis issues.
    "${localSdkPath}/bin/flutter" analyze

    # Run the formatter on all the dart files to make sure everything's linted.
    "${localSdkPath}/bin/flutter" format -n --set-exit-if-changed .

    # Run the actual tests.
    "${localSdkPath}/bin/flutter" test

    popd
done

echo "Run code segments check for 'gallery/gallery'."
pushd gallery/gallery
"${localSdkPath}/bin/flutter" pub run grinder verify-code-segments
popd

echo "Building the aar files for 'flutter_module'."
pushd add_to_app/flutter_module
"${localSdkPath}/bin/flutter" build aar
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

    ./gradlew assembleDebug
    ./gradlew assembleRelease

    popd
done

echo "-- Success --"
