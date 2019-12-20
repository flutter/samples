// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery/codeviewer/code_displayer.dart';
import 'package:gallery/codeviewer/code_segments.dart';
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/data/icons.dart';
import 'package:gallery/demos/cupertino/cupertino_alert_demo.dart';
import 'package:gallery/demos/cupertino/cupertino_button_demo.dart';
import 'package:gallery/demos/cupertino/cupertino_segmented_control_demo.dart';
import 'package:gallery/demos/cupertino/cupertino_slider_demo.dart';
import 'package:gallery/demos/cupertino/cupertino_switch_demo.dart';
import 'package:gallery/demos/cupertino/cupertino_tab_bar_demo.dart';
import 'package:gallery/demos/material/bottom_navigation_demo.dart';
import 'package:gallery/demos/material/bottom_sheet_demo.dart';
import 'package:gallery/demos/material/button_demo.dart';
import 'package:gallery/demos/material/chip_demo.dart';
import 'package:gallery/demos/material/dialog_demo.dart';
import 'package:gallery/demos/material/list_demo.dart';
import 'package:gallery/demos/material/selection_controls_demo.dart';
import 'package:gallery/demos/material/snackbar_demo.dart';
import 'package:gallery/demos/material/tabs_demo.dart';
import 'package:gallery/demos/material/text_field_demo.dart';
import 'package:gallery/demos/reference/colors_demo.dart';
import 'package:gallery/demos/reference/typography_demo.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/pages/demo.dart';
import 'package:gallery/themes/material_demo_theme_data.dart';

class GalleryDemo {
  GalleryDemo({
    @required this.title,
    @required this.icon,
    @required this.subtitle,
    @required this.configurations,
  })  : assert(title != null),
        assert(icon != null),
        assert(configurations != null && configurations.isNotEmpty);

  final String title;
  final IconData icon;
  final String subtitle;
  final List<GalleryDemoConfiguration> configurations;
}

class GalleryDemoConfiguration {
  GalleryDemoConfiguration({
    this.title,
    this.description,
    this.documentationUrl,
    this.buildRoute,
    this.code,
  });

  final String title;
  final String description;
  final String documentationUrl;
  final WidgetBuilder buildRoute;
  final CodeDisplayer code;
}

List<GalleryDemo> materialDemos(BuildContext context) {
  return [
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoBottomNavigationTitle,
      icon: GalleryIcons.bottomNavigation,
      subtitle: GalleryLocalizations.of(context).demoBottomNavigationSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context)
              .demoBottomNavigationPersistentLabels,
          description:
              GalleryLocalizations.of(context).demoBottomNavigationDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html',
          buildRoute: (_) =>
              BottomNavigationDemo(type: BottomNavigationDemoType.withLabels),
          code: CodeSegments.bottomNavigationDemo,
        ),
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context)
              .demoBottomNavigationSelectedLabel,
          description:
              GalleryLocalizations.of(context).demoBottomNavigationDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/BottomNavigationBar-class.html',
          buildRoute: (_) => BottomNavigationDemo(
              type: BottomNavigationDemoType.withoutLabels),
          code: CodeSegments.bottomNavigationDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoBottomSheetTitle,
      icon: GalleryIcons.bottomSheets,
      subtitle: GalleryLocalizations.of(context).demoBottomSheetSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title:
              GalleryLocalizations.of(context).demoBottomSheetPersistentTitle,
          description: GalleryLocalizations.of(context)
              .demoBottomSheetPersistentDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/BottomSheet-class.html',
          buildRoute: (_) =>
              BottomSheetDemo(type: BottomSheetDemoType.persistent),
          code: CodeSegments.bottomSheetDemoPersistent,
        ),
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoBottomSheetModalTitle,
          description:
              GalleryLocalizations.of(context).demoBottomSheetModalDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/BottomSheet-class.html',
          buildRoute: (_) => BottomSheetDemo(type: BottomSheetDemoType.modal),
          code: CodeSegments.bottomSheetDemoModal,
        ),
      ],
    ),
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoButtonTitle,
      icon: GalleryIcons.genericButtons,
      subtitle: GalleryLocalizations.of(context).demoButtonSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoFlatButtonTitle,
          description:
              GalleryLocalizations.of(context).demoFlatButtonDescription,
          documentationUrl:
              'https://docs.flutter.io/flutter/material/FlatButton-class.html',
          buildRoute: (_) => ButtonDemo(type: ButtonDemoType.flat),
          code: CodeSegments.buttonDemoFlat,
        ),
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoRaisedButtonTitle,
          description:
              GalleryLocalizations.of(context).demoRaisedButtonDescription,
          documentationUrl:
              'https://docs.flutter.io/flutter/material/RaisedButton-class.html',
          buildRoute: (_) => ButtonDemo(type: ButtonDemoType.raised),
          code: CodeSegments.buttonDemoRaised,
        ),
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoOutlineButtonTitle,
          description:
              GalleryLocalizations.of(context).demoOutlineButtonDescription,
          documentationUrl:
              'https://docs.flutter.io/flutter/material/OutlineButton-class.html',
          buildRoute: (_) => ButtonDemo(type: ButtonDemoType.outline),
          code: CodeSegments.buttonDemoOutline,
        ),
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoToggleButtonTitle,
          description:
              GalleryLocalizations.of(context).demoToggleButtonDescription,
          documentationUrl:
              'https://docs.flutter.io/flutter/material/ToggleButtons-class.html',
          buildRoute: (_) => ButtonDemo(type: ButtonDemoType.toggle),
          code: CodeSegments.buttonDemoToggle,
        ),
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoFloatingButtonTitle,
          description:
              GalleryLocalizations.of(context).demoFloatingButtonDescription,
          documentationUrl:
              'https://docs.flutter.io/flutter/material/FloatingActionButton-class.html',
          buildRoute: (_) => ButtonDemo(type: ButtonDemoType.floating),
          code: CodeSegments.buttonDemoFloating,
        ),
      ],
    ),
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoChipTitle,
      icon: GalleryIcons.chips,
      subtitle: GalleryLocalizations.of(context).demoChipSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoActionChipTitle,
          description:
              GalleryLocalizations.of(context).demoActionChipDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/ActionChip-class.html',
          buildRoute: (_) => ChipDemo(type: ChipDemoType.action),
          code: CodeSegments.chipDemoAction,
        ),
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoChoiceChipTitle,
          description:
              GalleryLocalizations.of(context).demoChoiceChipDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/ChoiceChip-class.html',
          buildRoute: (_) => ChipDemo(type: ChipDemoType.choice),
          code: CodeSegments.chipDemoChoice,
        ),
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoFilterChipTitle,
          description:
              GalleryLocalizations.of(context).demoFilterChipDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/FilterChip-class.html',
          buildRoute: (_) => ChipDemo(type: ChipDemoType.filter),
          code: CodeSegments.chipDemoFilter,
        ),
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoInputChipTitle,
          description:
              GalleryLocalizations.of(context).demoInputChipDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/InputChip-class.html',
          buildRoute: (_) => ChipDemo(type: ChipDemoType.input),
          code: CodeSegments.chipDemoInput,
        ),
      ],
    ),
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoDialogTitle,
      icon: GalleryIcons.dialogs,
      subtitle: GalleryLocalizations.of(context).demoDialogSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoAlertDialogTitle,
          description:
              GalleryLocalizations.of(context).demoAlertDialogDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/AlertDialog-class.html',
          buildRoute: (_) => DialogDemo(type: DialogDemoType.alert),
          code: CodeSegments.dialogDemo,
        ),
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoAlertTitleDialogTitle,
          description:
              GalleryLocalizations.of(context).demoAlertDialogDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/AlertDialog-class.html',
          buildRoute: (_) => DialogDemo(type: DialogDemoType.alertTitle),
          code: CodeSegments.dialogDemo,
        ),
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoSimpleDialogTitle,
          description:
              GalleryLocalizations.of(context).demoSimpleDialogDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/SimpleDialog-class.html',
          buildRoute: (_) => DialogDemo(type: DialogDemoType.simple),
          code: CodeSegments.dialogDemo,
        ),
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoFullscreenDialogTitle,
          description:
              GalleryLocalizations.of(context).demoFullscreenDialogDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/widgets/PageRoute/fullscreenDialog.html',
          buildRoute: (_) => DialogDemo(type: DialogDemoType.fullscreen),
          code: CodeSegments.dialogDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoListsTitle,
      icon: GalleryIcons.listAlt,
      subtitle: GalleryLocalizations.of(context).demoListsSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoOneLineListsTitle,
          description: GalleryLocalizations.of(context).demoListsDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/ListTile-class.html',
          buildRoute: (context) => ListDemo(type: ListDemoType.oneLine),
          code: CodeSegments.listDemo,
        ),
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoTwoLineListsTitle,
          description: GalleryLocalizations.of(context).demoListsDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/ListTile-class.html',
          buildRoute: (context) => ListDemo(type: ListDemoType.twoLine),
          code: CodeSegments.listDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoSelectionControlsTitle,
      icon: GalleryIcons.checkBox,
      subtitle: GalleryLocalizations.of(context).demoSelectionControlsSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context)
              .demoSelectionControlsCheckboxTitle,
          description: GalleryLocalizations.of(context)
              .demoSelectionControlsCheckboxDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/Checkbox-class.html',
          buildRoute: (context) => SelectionControlsDemo(
            type: SelectionControlsDemoType.checkbox,
          ),
          code: CodeSegments.selectionControlsDemoCheckbox,
        ),
        GalleryDemoConfiguration(
          title:
              GalleryLocalizations.of(context).demoSelectionControlsRadioTitle,
          description: GalleryLocalizations.of(context)
              .demoSelectionControlsRadioDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/Radio-class.html',
          buildRoute: (context) => SelectionControlsDemo(
            type: SelectionControlsDemoType.radio,
          ),
          code: CodeSegments.selectionControlsDemoRadio,
        ),
        GalleryDemoConfiguration(
          title:
              GalleryLocalizations.of(context).demoSelectionControlsSwitchTitle,
          description: GalleryLocalizations.of(context)
              .demoSelectionControlsSwitchDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/Switch-class.html',
          buildRoute: (context) => SelectionControlsDemo(
            type: SelectionControlsDemoType.switches,
          ),
          code: CodeSegments.selectionControlsDemoSwitches,
        ),
      ],
    ),
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoSnackbarsTitle,
      icon: GalleryIcons.snackbar,
      subtitle: GalleryLocalizations.of(context).demoSnackbarsSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoSnackbarsTitle,
          description:
              GalleryLocalizations.of(context).demoSnackbarsDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/SnackBar-class.html',
          buildRoute: (context) => SnackbarsDemo(),
          code: CodeSegments.snackbarsDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoTabsTitle,
      icon: GalleryIcons.tabs,
      subtitle: GalleryLocalizations.of(context).demoTabsSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoTabsTitle,
          description: GalleryLocalizations.of(context).demoTabsDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/TabBarView-class.html',
          buildRoute: (context) => TabsDemo(),
          code: CodeSegments.tabsDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoTextFieldTitle,
      icon: GalleryIcons.textFieldsAlt,
      subtitle: GalleryLocalizations.of(context).demoTextFieldSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoTextFieldTitle,
          description:
              GalleryLocalizations.of(context).demoTextFieldDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/TextField-class.html',
          buildRoute: (_) => TextFieldDemo(),
          code: CodeSegments.textFieldDemo,
        ),
      ],
    ),
  ];
}

List<GalleryDemo> cupertinoDemos(BuildContext context) {
  return [
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoCupertinoButtonsTitle,
      icon: GalleryIcons.genericButtons,
      subtitle: GalleryLocalizations.of(context).demoCupertinoButtonsSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoCupertinoButtonsTitle,
          description:
              GalleryLocalizations.of(context).demoCupertinoButtonsDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/cupertino/CupertinoButton-class.html',
          buildRoute: (_) => CupertinoButtonDemo(),
          code: CodeSegments.cupertinoButtonDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoCupertinoAlertsTitle,
      icon: GalleryIcons.dialogs,
      subtitle: GalleryLocalizations.of(context).demoCupertinoAlertsSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoCupertinoAlertTitle,
          description:
              GalleryLocalizations.of(context).demoCupertinoAlertDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/cupertino/CupertinoAlertDialog-class.html',
          buildRoute: (_) => CupertinoAlertDemo(type: AlertDemoType.alert),
          code: CodeSegments.cupertinoAlertDemo,
        ),
        GalleryDemoConfiguration(
          title:
              GalleryLocalizations.of(context).demoCupertinoAlertWithTitleTitle,
          description:
              GalleryLocalizations.of(context).demoCupertinoAlertDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/cupertino/CupertinoAlertDialog-class.html',
          buildRoute: (_) => CupertinoAlertDemo(type: AlertDemoType.alertTitle),
          code: CodeSegments.cupertinoAlertDemo,
        ),
        GalleryDemoConfiguration(
          title:
              GalleryLocalizations.of(context).demoCupertinoAlertButtonsTitle,
          description:
              GalleryLocalizations.of(context).demoCupertinoAlertDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/cupertino/CupertinoAlertDialog-class.html',
          buildRoute: (_) =>
              CupertinoAlertDemo(type: AlertDemoType.alertButtons),
          code: CodeSegments.cupertinoAlertDemo,
        ),
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context)
              .demoCupertinoAlertButtonsOnlyTitle,
          description:
              GalleryLocalizations.of(context).demoCupertinoAlertDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/cupertino/CupertinoAlertDialog-class.html',
          buildRoute: (_) =>
              CupertinoAlertDemo(type: AlertDemoType.alertButtonsOnly),
          code: CodeSegments.cupertinoAlertDemo,
        ),
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoCupertinoActionSheetTitle,
          description: GalleryLocalizations.of(context)
              .demoCupertinoActionSheetDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/cupertino/CupertinoActionSheet-class.html',
          buildRoute: (_) =>
              CupertinoAlertDemo(type: AlertDemoType.actionSheet),
          code: CodeSegments.cupertinoAlertDemo,
        ),
      ],
    ),
    GalleryDemo(
      title:
          GalleryLocalizations.of(context).demoCupertinoSegmentedControlTitle,
      icon: GalleryIcons.tabs,
      subtitle: GalleryLocalizations.of(context)
          .demoCupertinoSegmentedControlSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context)
              .demoCupertinoSegmentedControlTitle,
          description: GalleryLocalizations.of(context)
              .demoCupertinoSegmentedControlDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/cupertino/CupertinoSegmentedControl-class.html',
          buildRoute: (_) => CupertinoSegmentedControlDemo(),
          code: CodeSegments.cupertinoSegmentedControlDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoCupertinoSliderTitle,
      icon: GalleryIcons.sliders,
      subtitle: GalleryLocalizations.of(context).demoCupertinoSliderSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoCupertinoSliderTitle,
          description:
              GalleryLocalizations.of(context).demoCupertinoSliderDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/cupertino/CupertinoSlider-class.html',
          buildRoute: (_) => CupertinoSliderDemo(),
          code: CodeSegments.cupertinoSliderDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoSelectionControlsSwitchTitle,
      icon: GalleryIcons.switches,
      subtitle: GalleryLocalizations.of(context).demoCupertinoSwitchSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title:
              GalleryLocalizations.of(context).demoSelectionControlsSwitchTitle,
          description:
              GalleryLocalizations.of(context).demoCupertinoSwitchDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/cupertino/CupertinoSwitch-class.html',
          buildRoute: (_) => CupertinoSwitchDemo(),
          code: CodeSegments.cupertinoSwitchDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoCupertinoTabBarTitle,
      icon: GalleryIcons.bottomNavigation,
      subtitle: GalleryLocalizations.of(context).demoCupertinoTabBarSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoCupertinoTabBarTitle,
          description:
              GalleryLocalizations.of(context).demoCupertinoTabBarDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/cupertino/CupertinoTabBar-class.html',
          buildRoute: (_) => CupertinoTabBarDemo(),
          code: CodeSegments.cupertinoNavigationDemo,
        ),
      ],
    ),
  ];
}

List<GalleryDemo> referenceDemos(BuildContext context) {
  return [
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoColorsTitle,
      icon: GalleryIcons.colors,
      subtitle: GalleryLocalizations.of(context).demoColorsSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoColorsTitle,
          description: GalleryLocalizations.of(context).demoColorsDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/MaterialColor-class.html',
          buildRoute: (_) => ColorsDemo(),
          code: CodeSegments.colorsDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoTypographyTitle,
      icon: GalleryIcons.customTypography,
      subtitle: GalleryLocalizations.of(context).demoTypographySubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoTypographyTitle,
          description:
              GalleryLocalizations.of(context).demoTypographyDescription,
          documentationUrl:
              'https://api.flutter.dev/flutter/material/TextTheme-class.html',
          buildRoute: (_) => TypographyDemo(),
          code: CodeSegments.typographyDemo,
        ),
      ],
    ),
  ];
}

class DemoWrapper extends StatelessWidget {
  const DemoWrapper({Key key, this.child}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    bool hasCycled = true;
    return MaterialApp(
      theme: MaterialDemoThemeData.themeData.copyWith(
        platform: GalleryOptions.of(context).platform,
      ),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: GalleryLocalizations.localizationsDelegates,
      supportedLocales: GalleryLocalizations.supportedLocales,
      locale: GalleryOptions.of(context).locale,
      // Remove the MediaQuery padding because the demo is rendered inside of a
      // different page that already accounts for this padding.
      home: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Focus(
          onFocusChange: (hasFocus) {
            if (hasFocus && hasCycled) {
              hasCycled = !hasCycled;
              FocusScope.of(context).requestFocus(
                  InheritedDemoFocusNodes.of(context).backButtonFocusNode);
            }
          },
          child: ApplyTextOptions(
            child: CupertinoTheme(
              data: CupertinoThemeData().copyWith(brightness: Brightness.light),
              child: child,
            ),
          ),
        ),
      ),
    );
  }
}
