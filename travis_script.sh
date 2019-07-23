set -e

declare -a  PROJECT_NAMES=(
    "animations" \
    "flutter_maps_firestore" \
    "isolate_example" \
    "jsonexample" \
    "place_tracker" \
    "platform_design"
    "platform_view_swift" \
    "provider_counter" \
    "provider_shopper" \
    "shrine" \
    "veggieseasons" \
)

for PROJECT_NAME in "${PROJECT_NAMES[@]}"
do
    echo "== Testing '${PROJECT_NAME}' on Flutter's $FLUTTER_VERSION channel =="
    pushd "${PROJECT_NAME}"

    # Run the analyzer to find any static analysis issues.
    ../flutter/bin/flutter analyze

    # Run the formatter on all the dart files to make sure everything's linted.
    ../flutter/bin/flutter format -n --set-exit-if-changed .

    # Run the actual tests.
    ../flutter/bin/flutter test

    popd
done

echo "-- Success --"
