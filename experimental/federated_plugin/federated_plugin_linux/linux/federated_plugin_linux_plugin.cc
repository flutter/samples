#include "include/federated_plugin_linux/federated_plugin_linux_plugin.h"

#include <flutter_linux/flutter_linux.h>
#include <gtk/gtk.h>
#include <bits/stdc++.h>

using namespace std;

#define FEDERATED_PLUGIN_LINUX_PLUGIN(obj) \
  (G_TYPE_CHECK_INSTANCE_CAST((obj), federated_plugin_linux_plugin_get_type(), \
                              FederatedPluginLinuxPlugin))

struct _FederatedPluginLinuxPlugin {
	GObject parent_instance;
};

G_DEFINE_TYPE(FederatedPluginLinuxPlugin, federated_plugin_linux_plugin, g_object_get_type())

// Called when a method call is received from Flutter.
static void federated_plugin_linux_plugin_handle_method_call(
	FederatedPluginLinuxPlugin* self,
	FlMethodCall* method_call) {
	g_autoptr(FlMethodResponse) response = nullptr;

	const gchar* method = fl_method_call_get_name(method_call);

	if (strcmp(method, "getBatteryLevel") == 0) {
		string data;
		array<char, 128> buffer;

		std::unique_ptr<FILE, decltype(&pclose)> pipe(popen("cat /sys/class/power_supply/BAT0/capacity", "r"), pclose);

		while (fgets(buffer.data(), buffer.size(), pipe.get()) != nullptr) {
			data += buffer.data();
		}

		int batteryLevel = atoi(data.c_str());

		if (batteryLevel == 0) {
			response = FL_METHOD_RESPONSE(fl_method_error_response_new("STATUS_UNAVAILABLE", "Not able to determine battery level", nullptr));
		}
		else {
			g_autoptr(FlValue) result = fl_value_new_int(batteryLevel);
			response = FL_METHOD_RESPONSE(fl_method_success_response_new(result));
		}
	}
	else {
		response = FL_METHOD_RESPONSE(fl_method_not_implemented_response_new());
	}

	fl_method_call_respond(method_call, response, nullptr);
}

static void federated_plugin_linux_plugin_dispose(GObject* object) {
	G_OBJECT_CLASS(federated_plugin_linux_plugin_parent_class)->dispose(object);
}

static void federated_plugin_linux_plugin_class_init(FederatedPluginLinuxPluginClass* klass) {
	G_OBJECT_CLASS(klass)->dispose = federated_plugin_linux_plugin_dispose;
}

static void federated_plugin_linux_plugin_init(FederatedPluginLinuxPlugin* self) {}

static void method_call_cb(FlMethodChannel* channel, FlMethodCall* method_call,
	gpointer user_data) {
	FederatedPluginLinuxPlugin* plugin = FEDERATED_PLUGIN_LINUX_PLUGIN(user_data);
	federated_plugin_linux_plugin_handle_method_call(plugin, method_call);
}

void federated_plugin_linux_plugin_register_with_registrar(FlPluginRegistrar* registrar) {
	FederatedPluginLinuxPlugin* plugin = FEDERATED_PLUGIN_LINUX_PLUGIN(
		g_object_new(federated_plugin_linux_plugin_get_type(), nullptr));

	g_autoptr(FlStandardMethodCodec) codec = fl_standard_method_codec_new();
	g_autoptr(FlMethodChannel) channel =
		fl_method_channel_new(fl_plugin_registrar_get_messenger(registrar),
			"battery",
			FL_METHOD_CODEC(codec));
	fl_method_channel_set_method_call_handler(channel, method_call_cb,
		g_object_ref(plugin),
		g_object_unref);

	g_object_unref(plugin);
}
