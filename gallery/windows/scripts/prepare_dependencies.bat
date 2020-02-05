:: Copyright 2019 The Flutter team. All rights reserved.
:: Use of this source code is governed by a BSD-style license that can be
:: found in the LICENSE file.
@echo off

:: Run flutter tool backend.
set BUILD_MODE=%~1
"%FLUTTER_ROOT%\packages\flutter_tools\bin\tool_backend" windows-x64 %BUILD_MODE%
