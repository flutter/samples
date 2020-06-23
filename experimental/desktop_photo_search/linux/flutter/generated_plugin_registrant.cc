//
//  Generated file. Do not edit.
//

#include "generated_plugin_registrant.h"

#include <file_chooser/file_chooser_plugin.h>
#include <menubar/menubar_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) file_chooser_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "FileChooserPlugin");
  file_chooser_plugin_register_with_registrar(file_chooser_registrar);
  g_autoptr(FlPluginRegistrar) menubar_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "MenubarPlugin");
  menubar_plugin_register_with_registrar(menubar_registrar);
}
