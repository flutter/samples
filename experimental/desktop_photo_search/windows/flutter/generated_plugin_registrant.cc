//
//  Generated file. Do not edit.
//

#include "generated_plugin_registrant.h"

#include <file_chooser/file_chooser_plugin.h>
#include <menubar/menubar_plugin.h>
#include <url_launcher_windows/url_launcher_plugin.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  FileChooserPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FileChooserPlugin"));
  MenubarPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("MenubarPlugin"));
  UrlLauncherPluginRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("UrlLauncherPlugin"));
}
