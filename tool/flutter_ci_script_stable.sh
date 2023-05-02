#!/bin/bash

set -e

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

flutter doctor -v

declare -ar PROJECT_NAMES=(
    "add_to_app/android_view/flutter_module_using_plugin"
    "add_to_app/books/flutter_module_books"
    "add_to_app/fullscreen/flutter_module"
    "add_to_app/multiple_flutters/multiple_flutters_module"
    "add_to_app/plugin/flutter_module_using_plugin"
    "add_to_app/prebuilt_module/flutter_module"
    "analysis_defaults"
    "android_splash_screen"
    "animations"
    "background_isolate_channels"
    "code_sharing/client"
    "code_sharing/server"
    "code_sharing/shared"
    "deeplink_store_example"
    "desktop_photo_search/fluent_ui"
    "desktop_photo_search/material"
    "experimental/context_menus"
    "experimental/element_embedding_demo"
    # TODO(DomesticMouse): 'setMockMethodCallHandler' is deprecated and shouldn't be used.
    # "experimental/federated_plugin/federated_plugin"
    # TODO(DomesticMouse): 'setMockMethodCallHandler' is deprecated and shouldn't be used.
    # "experimental/federated_plugin/federated_plugin/example"
    "experimental/federated_plugin/federated_plugin_macos"
    # TODO(DomesticMouse): 'setMockMethodCallHandler' is deprecated and shouldn't be used.
    # "experimental/federated_plugin/federated_plugin_platform_interface"
    "experimental/federated_plugin/federated_plugin_web"
    "experimental/federated_plugin/federated_plugin_windows"
    "experimental/linting_tool"
    # TODO(DomesticMouse): 'window' is deprecated and shouldn't be used.
    # "experimental/material_3_demo"
    # TODO(DomesticMouse): The type 'ObjCSel' must be 'base', 'final' or 'sealed' because the supertype 'Opaque' is 'base'.
    # "experimental/pedometer"
    "experimental/pedometer/example"
    "experimental/varfont_shader_puzzle"
    "experimental/web_dashboard"
    "flutter_maps_firestore"
    "form_app"
    "game_template"
    "google_maps"
    "infinite_list"
    "ios_app_clip"
    "isolate_example"
    "jsonexample"
    # TODO(DomesticMouse): 'window' is deprecated and shouldn't be used.
    # "material_3_demo"
    "navigation_and_routing"
    "place_tracker"
    # TODO(DomesticMouse): 'setMockMessageHandler' is deprecated and shouldn't be used.
    # "platform_channels"
    "platform_design"
    "platform_view_swift"
    "provider_counter"
    "provider_shopper"
    "simple_shader"
    "simplistic_calculator"
    "simplistic_editor"
    "testing_app"
    "veggieseasons"
    "web/_tool"
    "web/samples_index"
)

ci_projects "stable" "${PROJECT_NAMES[@]}"

echo "-- Success --"
