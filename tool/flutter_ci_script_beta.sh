#!/bin/bash

set -e

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

flutter doctor -v

declare -ar PROJECT_NAMES=(
    "add_to_app/books/flutter_module_books"
    "add_to_app/fullscreen/flutter_module"
    "add_to_app/multiple_flutters/multiple_flutters_module"
    "add_to_app/plugin/flutter_module_using_plugin"
    "add_to_app/prebuilt_module/flutter_module"
    "android_splash_screen"
    "animations"
    # TODO(domesticmouse): Re-enable once Dart 2.17 is stable
    # "desktop_photo_search/fluent_ui"
    # TODO(domesticmouse): Re-enable once Dart 2.17 is stable
    # "desktop_photo_search/material"
    "experimental/federated_plugin/federated_plugin"
    "experimental/web_dashboard"
    "experimental/linting_tool"
    "flutter_maps_firestore"
    "form_app"
    "infinite_list"
    "ios_app_clip"
    "isolate_example"
    "jsonexample"
    "navigation_and_routing"
    "null_safety/null_safe_app"
    "null_safety/null_unsafe_app"
    "place_tracker"
    # TODO(domesticmouse): Re-enable once Dart 2.17 is stable
    # "platform_channels"
    # TODO(domesticmouse): Re-enable once Dart 2.17 is stable
    # "platform_design"
    "platform_view_swift"
    "provider_counter"
    "provider_shopper"
    # TODO(domesticmouse): Re-enable once Dart 2.17 is stable
    # "testing_app"
    "veggieseasons"
)

ci_projects "beta" "${PROJECT_NAMES[@]}"

echo "-- Success --"
