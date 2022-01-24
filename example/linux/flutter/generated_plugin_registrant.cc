//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <split_screen_menu/split_screen_menu_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) split_screen_menu_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "SplitScreenMenuPlugin");
  split_screen_menu_plugin_register_with_registrar(split_screen_menu_registrar);
}
