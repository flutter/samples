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
    # TODO(DomesticMouse): Dependency 'fluent_ui' fails to compile. https://github.com/bdlukaa/fluent_ui/issues/865
    # "desktop_photo_search/fluent_ui"
    "desktop_photo_search/material"
    # TODO(DomesticMouse): The function can't be unconditionally invoked because it can be 'null'.
    # "experimental/context_menus"
    "experimental/federated_plugin/federated_plugin"
    "experimental/federated_plugin/federated_plugin/example"
    "experimental/federated_plugin/federated_plugin_macos"
    "experimental/federated_plugin/federated_plugin_platform_interface"
    "experimental/federated_plugin/federated_plugin_web"
    "experimental/federated_plugin/federated_plugin_windows"
    "experimental/linting_tool"
    "experimental/material_3_demo"
    # TODO(DomesticMouse): dart format required
    # "experimental/pedometer"
    # TODO(DomesticMouse): dart format required
    # "experimental/pedometer/example"
    "experimental/varfont_shader_puzzle"
    "experimental/web_dashboard"
    "flutter_maps_firestore"
    "form_app"
    # TODO(DomesticMouse): The type 'AppLifecycleState' is not exhaustively matched by the switch cases since it doesn't match 'AppLifecycleState.hidden'.
    # "game_template"
    "google_maps"
    "infinite_list"
    "ios_app_clip"
    "isolate_example"
    "jsonexample"
    "material_3_demo"
    # TODO(DomesticMouse): The '!' will have no effect because the receiver can't be null.
    # "navigation_and_routing"
    "next_gen_ui_demo"
    "place_tracker"
    "platform_channels"
    "platform_design"
    "platform_view_swift"
    "provider_counter"
    "provider_shopper"
    "simple_shader"
    "simplistic_calculator"
    # TODO(DomesticMouse): The named parameter 'onLiveTextInput' is required, but there's no corresponding argument.
    # "simplistic_editor"
    "testing_app"
    "veggieseasons"
    "web_embedding/element_embedding_demo"
    "web/_tool"
    "web/samples_index"
)

ci_projects "beta" "${PROJECT_NAMES[@]}"

echo "-- Success --"
