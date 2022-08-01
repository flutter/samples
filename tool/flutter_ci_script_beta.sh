#!/bin/bash

set -e

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

flutter doctor -v

declare -ar PROJECT_NAMES=(
    # TODO(domesticmouse): re-enable when stable increments
    # "add_to_app/books/flutter_module_books"
    "add_to_app/fullscreen/flutter_module"
    "add_to_app/multiple_flutters/multiple_flutters_module"
    "add_to_app/plugin/flutter_module_using_plugin"
    "add_to_app/prebuilt_module/flutter_module"
    "android_splash_screen"
    "animations"
    # TODO(domesticmouse): re-enable when stable increments
    # "desktop_photo_search/fluent_ui"
    # TODO(domesticmouse): re-enable when stable increments
    # "desktop_photo_search/material"
    "experimental/federated_plugin/federated_plugin"
    # TODO(domesticmouse): re-enable when stable increments
    # "experimental/web_dashboard"
    "experimental/linting_tool"
    "flutter_maps_firestore"
    # TODO(domesticmouse): re-enable when stable increments
    # "form_app"
    "game_template"
    "infinite_list"
    "ios_app_clip"
    # TODO(domesticmouse): re-enable when stable increments
    # "isolate_example"
    "jsonexample"
    # TODO(domesticmouse): re-enable when stable increments
    # "material_3_demo"
    "navigation_and_routing"
    "null_safety/null_safe_app"
    "null_safety/null_unsafe_app"
    # TODO(domesticmouse): re-enable when stable increments
    # "place_tracker"
    # TODO(domesticmouse): re-enable when stable increments
    # "platform_channels"
    "platform_design"
    "platform_view_swift"
    "provider_counter"
    # TODO(domesticmouse): re-enable when stable increments
    # "provider_shopper"
    # TODO(domesticmouse): re-enable when stable increments
    # "simplistic_editor"
    # TODO(domesticmouse): re-enable when stable increments
    # "testing_app"
    "veggieseasons"
)

ci_projects "beta" "${PROJECT_NAMES[@]}"

echo "-- Success --"
