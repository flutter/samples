#!/bin/bash

set -e

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

declare -ar PROJECT_NAMES=(
    "add_to_app/fullscreen/flutter_module" \
    "add_to_app/prebuilt_module/flutter_module" \
    "add_to_app/plugin/flutter_module_using_plugin" \
    "add_to_app/books/flutter_module_books" \
    "animations" \
    # Tracking issue: https://github.com/flutter/samples/issues/652
    # "flutter_maps_firestore" \
    "infinite_list" \
    "ios_app_clip" \
    # Tracking issue: https://github.com/flutter/samples/issues/653
    # "isolate_example" \
    "jsonexample" \
    # Tracking issue: https://github.com/flutter/samples/issues/655
    # "place_tracker" \
    # Tracking issue: https://github.com/flutter/samples/issues/656
    # "platform_channels" \
    "platform_design"
    "platform_view_swift" \
    "provider_counter" \
    # Tracking issue: https://github.com/flutter/samples/issues/657
    # "provider_shopper" \
    # Tracking issue: https://github.com/flutter/samples/issues/658
    # "testing_app" \
    # Tracking issue: https://github.com/flutter/samples/issues/659
    # "experimental/federated_plugin/federated_plugin" \
    "null_safety/null_safe_app" \
    "null_safety/null_unsafe_app" \
    "experimental/web_dashboard" \
    "veggieseasons" \
)

ci_projects "beta" "${PROJECT_NAMES[@]}"

echo "-- Success --"
