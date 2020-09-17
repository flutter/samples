// Copyright 2020 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

#include "include/federated_plugin_windows/federated_plugin_windows_plugin.h"

#include <windows.h>

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>
#include <flutter/standard_method_codec.h>

#include <map>
#include <memory>

namespace {

	class FederatedPluginWindowsPlugin : public flutter::Plugin {
	public:
		static void RegisterWithRegistrar(flutter::PluginRegistrarWindows* registrar);

		FederatedPluginWindowsPlugin();

		virtual ~FederatedPluginWindowsPlugin();

	private:
		// Called when a method is called on this plugin's channel from Dart.
		void HandleMethodCall(
			const flutter::MethodCall<flutter::EncodableValue>& method_call,
			std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
	};

	void FederatedPluginWindowsPlugin::RegisterWithRegistrar(
		flutter::PluginRegistrarWindows* registrar) {
		auto channel =
			std::make_unique<flutter::MethodChannel<flutter::EncodableValue>>(
				registrar->messenger(), "battery",
				&flutter::StandardMethodCodec::GetInstance());

		auto plugin = std::make_unique<FederatedPluginWindowsPlugin>();

		channel->SetMethodCallHandler(
			[plugin_pointer = plugin.get()](const auto& call, auto result) {
			plugin_pointer->HandleMethodCall(call, std::move(result));
		});

		registrar->AddPlugin(std::move(plugin));
	}

	FederatedPluginWindowsPlugin::FederatedPluginWindowsPlugin() {}

	FederatedPluginWindowsPlugin::~FederatedPluginWindowsPlugin() {}

	void FederatedPluginWindowsPlugin::HandleMethodCall(
		const flutter::MethodCall<flutter::EncodableValue>& method_call,
		std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result) {
		if (method_call.method_name().compare("getBatteryLevel") == 0) {
			SYSTEM_POWER_STATUS systemPower;
			// GetSystemPowerStatus will retrieve the power status of the system.
			if (GetSystemPowerStatus(&systemPower)) {
				int batteryLevel = systemPower.BatteryLifePercent;
				// The batteryLevel value in the range 0 to 100, or 255 if status is unknown.
				if (batteryLevel != 255) {
					flutter::EncodableValue response(batteryLevel);
					result->Success(&response);
				}
				else {
					result->Error("STATUS_UNAVAILABLE", "Not able to determine battery level.");
				}
			}
			else {
				result->Error("STATUS_UNAVAILABLE", "Not able to determine battery level.");
			}
		}
		else {
			result->NotImplemented();
		}
	}

}

void FederatedPluginWindowsPluginRegisterWithRegistrar(
	FlutterDesktopPluginRegistrarRef registrar) {
	FederatedPluginWindowsPlugin::RegisterWithRegistrar(
		flutter::PluginRegistrarManager::GetInstance()
		->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
