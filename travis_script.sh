set -e

# Backs up one directory at a time, looking for one called "flutter".
function getFlutterPath() {
    local path=".."
    local counter=0

    while [[ "${counter}" -lt 10 ]]; do
        [ -d "${path}/flutter" ] && echo "${path}/flutter" && return 0
        let counter++
        path="${path}/.."
    done
}

declare -a  PROJECT_NAMES=(
    "animations" \
    "chrome-os-best-practices" \
    "gallery/gallery" \
    "flutter_maps_firestore" \
    "isolate_example" \
    "jsonexample" \
    "place_tracker" \
    "platform_design"
    "platform_view_swift" \
    "provider_counter" \
    "provider_shopper" \
    "material_studies/rally" \
    "material_studies/shrine" \
    "veggieseasons" \
)

for PROJECT_NAME in "${PROJECT_NAMES[@]}"
do
    echo "== Testing '${PROJECT_NAME}' on Flutter's $FLUTTER_VERSION channel =="
    pushd "${PROJECT_NAME}"

    localSdkPath=$(getFlutterPath)
    
    if [ -z "$localSdkPath" ]
    then 
        echo "Failed to find Flutter SDK for '${PROJECT_NAME}'."
        exit 1
    fi

    # Run the analyzer to find any static analysis issues.
    "${localSdkPath}/bin/flutter" analyze

    # Run the formatter on all the dart files to make sure everything's linted.
    "${localSdkPath}/bin/flutter" format -n --set-exit-if-changed .

    # Run the actual tests.
    "${localSdkPath}/bin/flutter" test

    popd
done

echo "-- Success --"
