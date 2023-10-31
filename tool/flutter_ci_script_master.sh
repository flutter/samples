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
    # TODO(DomesticMouse): 'textScaleFactor' is deprecated and shouldn't be used.
    # "animations"
    "background_isolate_channels"
    "code_sharing/client"
    "code_sharing/server"
    "code_sharing/shared"
    "deeplink_store_example"
    "desktop_photo_search/fluent_ui"
    "desktop_photo_search/material"
    # TODO(DomesticMouse): Context Menu tests are flaky?
    # "experimental/context_menus"
    "experimental/federated_plugin/federated_plugin"
    "experimental/federated_plugin/federated_plugin/example"
    "experimental/federated_plugin/federated_plugin_macos"
    "experimental/federated_plugin/federated_plugin_platform_interface"
    "experimental/federated_plugin/federated_plugin_web"
    "experimental/federated_plugin/federated_plugin_windows"
    "experimental/linting_tool"
    "experimental/material_3_demo"
    # TODO(DomesticMouse): Dart formatting required
    # "experimental/pedometer"
    # "experimental/pedometer/example"
    # TODO(DomesticMouse): Dart formatting required
    # "experimental/varfont_shader_puzzle"
    # TODO(DomesticMouse): Because every version of flutter_test from sdk depends on intl 0.18.1 and web_dashboard depends on intl ^0.17.0, flutter_test from sdk is forbidden.
    # "experimental/web_dashboard"
    "flutter_maps_firestore"
    "form_app"
    "game_template"
    "google_maps"
    "infinite_list"
    "ios_app_clip"
    "isolate_example"
    # TODO(DomesticMouse): ComplexObjectView widget test Typical object is displayed correctly
    # "jsonexample"
    "material_3_demo"
    # TODO(DomesticMouse): Use 'const' with the constructor to improve performance.
    # "navigation_and_routing"
    "place_tracker"
    "platform_channels"
    "platform_design"
    "platform_view_swift"
    "provider_counter"
    "provider_shopper"
    "simple_shader"
    # TODO(DomesticMouse): Inferred type argument 'AutoPlacement' doesn't conform to the bound 'Enum?' of the type variable 'T' on 'EnumProperty'.
    # "simplistic_calculator"
    # TODO(DomesticMouse): The named parameter 'onLookUp' is required
    # "simplistic_editor"
    "testing_app"
    "veggieseasons"
    "web_embedding/element_embedding_demo"
    "web/_tool"
    "web/samples_index"
)

ci_projects "master" "${PROJECT_NAMES[@]}"

echo "-- Success --"
