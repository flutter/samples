# Copyright 2019 The Flutter team. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

# Executable name.
BINARY_NAME=Flutter_Gallery
# Any extra source files to build.
EXTRA_SOURCES=
# Paths of any additional libraries to be bundled in the output directory.
EXTRA_BUNDLED_LIBRARIES=
# Extra flags (e.g., for library dependencies).
SYSTEM_LIBRARIES=
EXTRA_CXXFLAGS=
EXTRA_CPPFLAGS=
EXTRA_LDFLAGS=

# Default build type. For a release build, set BUILD=release.
# Currently this only sets NDEBUG, which is used to control the flags passed
# to the Flutter engine in the example shell, and not the complation settings
# (e.g., optimization level) of the C++ code.
BUILD=debug

FLUTTER_EPHEMERAL_DIR=flutter/ephemeral

# Configuration provided via flutter tool.
FLUTTER_CONFIG_FILE=$(FLUTTER_EPHEMERAL_DIR)/generated_config.mk
include $(FLUTTER_CONFIG_FILE)

# Dependency locations
FLUTTER_APP_DIR=$(CURDIR)/..
FLUTTER_APP_BUILD_DIR=$(FLUTTER_APP_DIR)/build

OUT_DIR=$(FLUTTER_APP_BUILD_DIR)/linux
OBJ_DIR=$(OUT_DIR)/obj/$(BUILD)

# Libraries
FLUTTER_LIB_NAME=flutter_linux_glfw
FLUTTER_LIB=$(FLUTTER_EPHEMERAL_DIR)/lib$(FLUTTER_LIB_NAME).so

# Tools
FLUTTER_BIN=$(FLUTTER_ROOT)/bin/flutter
LINUX_BUILD=$(FLUTTER_ROOT)/packages/flutter_tools/bin/tool_backend.sh

# Resources
ICU_DATA_NAME=icudtl.dat
ICU_DATA_SOURCE=$(FLUTTER_EPHEMERAL_DIR)/$(ICU_DATA_NAME)
FLUTTER_ASSETS_NAME=flutter_assets
FLUTTER_ASSETS_SOURCE=$(FLUTTER_APP_BUILD_DIR)/$(FLUTTER_ASSETS_NAME)

# Bundle structure
BUNDLE_OUT_DIR=$(OUT_DIR)/$(BUILD)
BUNDLE_DATA_DIR=$(BUNDLE_OUT_DIR)/data
BUNDLE_LIB_DIR=$(BUNDLE_OUT_DIR)/lib

BIN_OUT=$(BUNDLE_OUT_DIR)/$(BINARY_NAME)
ICU_DATA_OUT=$(BUNDLE_DATA_DIR)/$(ICU_DATA_NAME)
FLUTTER_LIB_OUT=$(BUNDLE_LIB_DIR)/$(notdir $(FLUTTER_LIB))
ALL_LIBS_OUT=$(FLUTTER_LIB_OUT) \
	$(foreach lib,$(EXTRA_BUNDLED_LIBRARIES),$(BUNDLE_LIB_DIR)/$(notdir $(lib)))

# Add relevant code from the wrapper library, which is intended to be statically
# built into the client.
# Use abspath for the wrapper root, which can contain relative paths; the
# intermediate build files will be based on the source path, which will cause
# issues if they start with one or more '../'s.
WRAPPER_ROOT=$(abspath $(FLUTTER_EPHEMERAL_DIR)/cpp_client_wrapper_glfw)
WRAPPER_SOURCES= \
	$(WRAPPER_ROOT)/flutter_window_controller.cc \
	$(WRAPPER_ROOT)/plugin_registrar.cc \
	$(WRAPPER_ROOT)/engine_method_result.cc

# Use abspath for extra sources, which may also contain relative paths (see
# note above about WRAPPER_ROOT).
SOURCES=main.cc flutter/generated_plugin_registrant.cc $(WRAPPER_SOURCES) \
	$(abspath $(EXTRA_SOURCES))

# Headers
WRAPPER_INCLUDE_DIR=$(WRAPPER_ROOT)/include
INCLUDE_DIRS=$(FLUTTER_EPHEMERAL_DIR) $(WRAPPER_INCLUDE_DIR)

# Build settings
ifneq ($(strip $(SYSTEM_LIBRARIES)),)
EXTRA_CPPFLAGS+=$(patsubst -I%,-isystem%,$(shell pkg-config --cflags $(SYSTEM_LIBRARIES)))
EXTRA_LDFLAGS+=$(shell pkg-config --libs $(SYSTEM_LIBRARIES))
endif
CXX=clang++ $(EXTRA_CXXFLAGS)
CXXFLAGS.release=-DNDEBUG
CXXFLAGS=-std=c++14 -Wall -Werror $(CXXFLAGS.$(BUILD))
CPPFLAGS=$(patsubst %,-I%,$(INCLUDE_DIRS)) $(EXTRA_CPPFLAGS)
LDFLAGS=-L$(BUNDLE_LIB_DIR) \
	-l$(FLUTTER_LIB_NAME) \
	$(EXTRA_LDFLAGS) \
	-Wl,-rpath=\$$ORIGIN/lib

# Intermediate files.
OBJ_FILES=$(SOURCES:%.cc=$(OBJ_DIR)/%.o)
DEPENDENCY_FILES=$(OBJ_FILES:%.o=%.d)

# Targets

.PHONY: all
all: $(BIN_OUT) bundle

# This is a phony target because the flutter tool cannot describe
# its inputs and outputs yet.
.PHONY: sync
sync: $(FLUTTER_CONFIG_FILE)
	$(LINUX_BUILD) linux-x64 $(BUILD)

.PHONY: bundle
bundle: $(ICU_DATA_OUT) $(ALL_LIBS_OUT) bundleflutterassets

$(BIN_OUT): $(OBJ_FILES) $(ALL_LIBS_OUT)
	mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) $(OBJ_FILES) $(LDFLAGS) -o $@

$(WRAPPER_SOURCES) $(FLUTTER_LIB) $(ICU_DATA_SOURCE) $(FLUTTER_ASSETS_SOURCE): \
	| sync

$(FLUTTER_LIB_OUT): $(FLUTTER_LIB)
	mkdir -p $(@D)
	cp $< $@

$(ICU_DATA_OUT): $(ICU_DATA_SOURCE)
	mkdir -p $(@D)
	cp $< $@

-include $(DEPENDENCY_FILES)

$(OBJ_DIR)/%.o : %.cc | sync
	mkdir -p $(@D)
	$(CXX) $(CXXFLAGS) $(CPPFLAGS) -MMD -c $< -o $@

# Fully re-copy the assets directory on each build to avoid having to keep a
# comprehensive list of all asset files here, which would be fragile to changes
# in the Flutter example (e.g., adding a new font to pubspec.yaml would require
# changes here).
.PHONY: bundleflutterassets
bundleflutterassets: $(FLUTTER_ASSETS_SOURCE)
	mkdir -p $(BUNDLE_DATA_DIR)
	rsync -rpu --delete $(FLUTTER_ASSETS_SOURCE) $(BUNDLE_DATA_DIR)

.PHONY: clean
clean:
	rm -rf $(OUT_DIR); \
	cd $(FLUTTER_APP_DIR); \
	$(FLUTTER_BIN) clean
