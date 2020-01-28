// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gallery/codeviewer/code_displayer.dart';
import 'package:gallery/codeviewer/code_segments.dart';
import 'package:gallery/data/gallery_options.dart';
import 'package:gallery/data/icons.dart';
import 'package:gallery/demos/cupertino/cupertino_activity_indicator_demo.dart';
import 'package:gallery/demos/cupertino/cupertino_alert_demo.dart';
import 'package:gallery/demos/cupertino/cupertino_button_demo.dart';
import 'package:gallery/demos/cupertino/cupertino_navigation_bar_demo.dart';
import 'package:gallery/demos/cupertino/cupertino_picker_demo.dart';
import 'package:gallery/demos/cupertino/cupertino_refresh_demo.dart';
import 'package:gallery/demos/cupertino/cupertino_segmented_control_demo.dart';
import 'package:gallery/demos/cupertino/cupertino_slider_demo.dart';
import 'package:gallery/demos/cupertino/cupertino_switch_demo.dart';
import 'package:gallery/demos/cupertino/cupertino_tab_bar_demo.dart';
import 'package:gallery/demos/cupertino/cupertino_text_field_demo.dart';
import 'package:gallery/demos/material/banner_demo.dart';
import 'package:gallery/demos/material/bottom_app_bar_demo.dart';
import 'package:gallery/demos/material/bottom_navigation_demo.dart';
import 'package:gallery/demos/material/bottom_sheet_demo.dart';
import 'package:gallery/demos/material/button_demo.dart';
import 'package:gallery/demos/material/cards_demo.dart';
import 'package:gallery/demos/material/chip_demo.dart';
import 'package:gallery/demos/material/data_table_demo.dart';
import 'package:gallery/demos/material/dialog_demo.dart';
import 'package:gallery/demos/material/grid_list_demo.dart';
import 'package:gallery/demos/material/list_demo.dart';
import 'package:gallery/demos/material/menu_demo.dart';
import 'package:gallery/demos/material/picker_demo.dart';
import 'package:gallery/demos/material/progress_indicator_demo.dart';
import 'package:gallery/demos/material/selection_controls_demo.dart';
import 'package:gallery/demos/material/sliders_demo.dart';
import 'package:gallery/demos/material/snackbar_demo.dart';
import 'package:gallery/demos/material/tabs_demo.dart';
import 'package:gallery/demos/material/text_field_demo.dart';
import 'package:gallery/demos/material/tooltip_demo.dart';
import 'package:gallery/demos/reference/colors_demo.dart';
import 'package:gallery/demos/reference/typography_demo.dart';
import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/themes/material_demo_theme_data.dart';

const _docsBaseUrl = 'https://api.flutter.dev/flutter';

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
  final localizations = GalleryLocalizations.of(context);
  return [
    GalleryDemo(
      title: localizations.demoBannerTitle,
      icon: GalleryIcons.listsLeaveBehind,
      subtitle: localizations.demoBannerSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoBannerTitle,
          description: localizations.demoBannerDescription,
          documentationUrl: '$_docsBaseUrl/material/MaterialBanner-class.html',
          buildRoute: (_) => BannerDemo(),
          code: CodeSegments.bannerDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoBottomAppBarTitle,
      icon: GalleryIcons.bottomAppBar,
      subtitle: localizations.demoBottomAppBarSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoBottomAppBarTitle,
          description: localizations.demoBottomAppBarDescription,
          documentationUrl: '$_docsBaseUrl/material/BottomAppBar-class.html',
          buildRoute: (_) => BottomAppBarDemo(),
          code: CodeSegments.bottomAppBarDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoBottomNavigationTitle,
      icon: GalleryIcons.bottomNavigation,
      subtitle: localizations.demoBottomNavigationSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoBottomNavigationPersistentLabels,
          description: localizations.demoBottomNavigationDescription,
          documentationUrl:
              '$_docsBaseUrl/material/BottomNavigationBar-class.html',
          buildRoute: (_) =>
              BottomNavigationDemo(type: BottomNavigationDemoType.withLabels),
          code: CodeSegments.bottomNavigationDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoBottomNavigationSelectedLabel,
          description: localizations.demoBottomNavigationDescription,
          documentationUrl:
              '$_docsBaseUrl/material/BottomNavigationBar-class.html',
          buildRoute: (_) => BottomNavigationDemo(
              type: BottomNavigationDemoType.withoutLabels),
          code: CodeSegments.bottomNavigationDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoBottomSheetTitle,
      icon: GalleryIcons.bottomSheets,
      subtitle: localizations.demoBottomSheetSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoBottomSheetPersistentTitle,
          description: localizations.demoBottomSheetPersistentDescription,
          documentationUrl: '$_docsBaseUrl/material/BottomSheet-class.html',
          buildRoute: (_) =>
              BottomSheetDemo(type: BottomSheetDemoType.persistent),
          code: CodeSegments.bottomSheetDemoPersistent,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoBottomSheetModalTitle,
          description: localizations.demoBottomSheetModalDescription,
          documentationUrl: '$_docsBaseUrl/material/BottomSheet-class.html',
          buildRoute: (_) => BottomSheetDemo(type: BottomSheetDemoType.modal),
          code: CodeSegments.bottomSheetDemoModal,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoButtonTitle,
      icon: GalleryIcons.genericButtons,
      subtitle: localizations.demoButtonSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoFlatButtonTitle,
          description: localizations.demoFlatButtonDescription,
          documentationUrl: '$_docsBaseUrl/material/FlatButton-class.html',
          buildRoute: (_) => ButtonDemo(type: ButtonDemoType.flat),
          code: CodeSegments.buttonDemoFlat,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoRaisedButtonTitle,
          description: localizations.demoRaisedButtonDescription,
          documentationUrl: '$_docsBaseUrl/material/RaisedButton-class.html',
          buildRoute: (_) => ButtonDemo(type: ButtonDemoType.raised),
          code: CodeSegments.buttonDemoRaised,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoOutlineButtonTitle,
          description: localizations.demoOutlineButtonDescription,
          documentationUrl: '$_docsBaseUrl/material/OutlineButton-class.html',
          buildRoute: (_) => ButtonDemo(type: ButtonDemoType.outline),
          code: CodeSegments.buttonDemoOutline,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoToggleButtonTitle,
          description: localizations.demoToggleButtonDescription,
          documentationUrl: '$_docsBaseUrl/material/ToggleButtons-class.html',
          buildRoute: (_) => ButtonDemo(type: ButtonDemoType.toggle),
          code: CodeSegments.buttonDemoToggle,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoFloatingButtonTitle,
          description: localizations.demoFloatingButtonDescription,
          documentationUrl:
              '$_docsBaseUrl/material/FloatingActionButton-class.html',
          buildRoute: (_) => ButtonDemo(type: ButtonDemoType.floating),
          code: CodeSegments.buttonDemoFloating,
        ),
      ],
    ),
    GalleryDemo(
      title: GalleryLocalizations.of(context).demoCardTitle,
      icon: GalleryIcons.cards,
      subtitle: GalleryLocalizations.of(context).demoCardSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: GalleryLocalizations.of(context).demoCardTitle,
          description: GalleryLocalizations.of(context).demoCardDescription,
          documentationUrl: '$_docsBaseUrl/material/Card-class.html',
          buildRoute: (context) => CardsDemo(),
          code: CodeSegments.cardsDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoChipTitle,
      icon: GalleryIcons.chips,
      subtitle: localizations.demoChipSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoActionChipTitle,
          description: localizations.demoActionChipDescription,
          documentationUrl: '$_docsBaseUrl/material/ActionChip-class.html',
          buildRoute: (_) => ChipDemo(type: ChipDemoType.action),
          code: CodeSegments.chipDemoAction,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoChoiceChipTitle,
          description: localizations.demoChoiceChipDescription,
          documentationUrl: '$_docsBaseUrl/material/ChoiceChip-class.html',
          buildRoute: (_) => ChipDemo(type: ChipDemoType.choice),
          code: CodeSegments.chipDemoChoice,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoFilterChipTitle,
          description: localizations.demoFilterChipDescription,
          documentationUrl: '$_docsBaseUrl/material/FilterChip-class.html',
          buildRoute: (_) => ChipDemo(type: ChipDemoType.filter),
          code: CodeSegments.chipDemoFilter,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoInputChipTitle,
          description: localizations.demoInputChipDescription,
          documentationUrl: '$_docsBaseUrl/material/InputChip-class.html',
          buildRoute: (_) => ChipDemo(type: ChipDemoType.input),
          code: CodeSegments.chipDemoInput,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoDataTableTitle,
      icon: GalleryIcons.dataTable,
      subtitle: localizations.demoDataTableSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoDataTableTitle,
          description: localizations.demoDataTableDescription,
          documentationUrl: '$_docsBaseUrl/material/DataTable-class.html',
          buildRoute: (_) => DataTableDemo(),
          code: CodeSegments.dataTableDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoDialogTitle,
      icon: GalleryIcons.dialogs,
      subtitle: localizations.demoDialogSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoAlertDialogTitle,
          description: localizations.demoAlertDialogDescription,
          documentationUrl: '$_docsBaseUrl/material/AlertDialog-class.html',
          buildRoute: (_) => DialogDemo(type: DialogDemoType.alert),
          code: CodeSegments.dialogDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoAlertTitleDialogTitle,
          description: localizations.demoAlertDialogDescription,
          documentationUrl: '$_docsBaseUrl/material/AlertDialog-class.html',
          buildRoute: (_) => DialogDemo(type: DialogDemoType.alertTitle),
          code: CodeSegments.dialogDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoSimpleDialogTitle,
          description: localizations.demoSimpleDialogDescription,
          documentationUrl: '$_docsBaseUrl/material/SimpleDialog-class.html',
          buildRoute: (_) => DialogDemo(type: DialogDemoType.simple),
          code: CodeSegments.dialogDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoFullscreenDialogTitle,
          description: localizations.demoFullscreenDialogDescription,
          documentationUrl:
              '$_docsBaseUrl/widgets/PageRoute/fullscreenDialog.html',
          buildRoute: (_) => DialogDemo(type: DialogDemoType.fullscreen),
          code: CodeSegments.dialogDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoGridListsTitle,
      icon: GalleryIcons.gridOn,
      subtitle: localizations.demoGridListsSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoGridListsImageOnlyTitle,
          description: localizations.demoGridListsDescription,
          documentationUrl: '$_docsBaseUrl/widgets/GridView-class.html',
          buildRoute: (context) =>
              GridListDemo(type: GridListDemoType.imageOnly),
          code: CodeSegments.gridListsDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoGridListsHeaderTitle,
          description: localizations.demoGridListsDescription,
          documentationUrl: '$_docsBaseUrl/widgets/GridView-class.html',
          buildRoute: (context) => GridListDemo(type: GridListDemoType.header),
          code: CodeSegments.gridListsDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoGridListsFooterTitle,
          description: localizations.demoGridListsDescription,
          documentationUrl: '$_docsBaseUrl/widgets/GridView-class.html',
          buildRoute: (context) => GridListDemo(type: GridListDemoType.footer),
          code: CodeSegments.gridListsDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoListsTitle,
      icon: GalleryIcons.listAlt,
      subtitle: localizations.demoListsSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoOneLineListsTitle,
          description: localizations.demoListsDescription,
          documentationUrl: '$_docsBaseUrl/material/ListTile-class.html',
          buildRoute: (context) => ListDemo(type: ListDemoType.oneLine),
          code: CodeSegments.listDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoTwoLineListsTitle,
          description: localizations.demoListsDescription,
          documentationUrl: '$_docsBaseUrl/material/ListTile-class.html',
          buildRoute: (context) => ListDemo(type: ListDemoType.twoLine),
          code: CodeSegments.listDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoMenuTitle,
      icon: GalleryIcons.moreVert,
      subtitle: localizations.demoMenuSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoContextMenuTitle,
          description: localizations.demoMenuDescription,
          documentationUrl: '$_docsBaseUrl/material/PopupMenuItem-class.html',
          buildRoute: (context) => MenuDemo(
            type: MenuDemoType.contextMenu,
          ),
          code: CodeSegments.menuDemoContext,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoSectionedMenuTitle,
          description: localizations.demoMenuDescription,
          documentationUrl: '$_docsBaseUrl/material/PopupMenuItem-class.html',
          buildRoute: (context) => MenuDemo(
            type: MenuDemoType.sectionedMenu,
          ),
          code: CodeSegments.menuDemoSectioned,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoChecklistMenuTitle,
          description: localizations.demoMenuDescription,
          documentationUrl:
              '$_docsBaseUrl/material/CheckedPopupMenuItem-class.html',
          buildRoute: (context) => MenuDemo(
            type: MenuDemoType.checklistMenu,
          ),
          code: CodeSegments.menuDemoChecklist,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoSimpleMenuTitle,
          description: localizations.demoMenuDescription,
          documentationUrl: '$_docsBaseUrl/material/PopupMenuItem-class.html',
          buildRoute: (context) => MenuDemo(
            type: MenuDemoType.simpleMenu,
          ),
          code: CodeSegments.menuDemoSimple,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoPickersTitle,
      icon: GalleryIcons.event,
      subtitle: localizations.demoPickersSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoDatePickerTitle,
          description: localizations.demoDatePickerDescription,
          documentationUrl: '$_docsBaseUrl/material/showDatePicker.html',
          buildRoute: (context) => PickerDemo(type: PickerDemoType.date),
          code: CodeSegments.pickerDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoTimePickerTitle,
          description: localizations.demoTimePickerDescription,
          documentationUrl: '$_docsBaseUrl/material/showTimePicker.htmlhtml',
          buildRoute: (context) => PickerDemo(type: PickerDemoType.time),
          code: CodeSegments.pickerDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoProgressIndicatorTitle,
      icon: GalleryIcons.progressActivity,
      subtitle: localizations.demoProgressIndicatorSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoCircularProgressIndicatorTitle,
          description: localizations.demoCircularProgressIndicatorDescription,
          documentationUrl:
              '$_docsBaseUrl/material/CircularProgressIndicator-class.html',
          buildRoute: (context) => ProgressIndicatorDemo(
            type: ProgressIndicatorDemoType.circular,
          ),
          code: CodeSegments.progressIndicatorsDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoLinearProgressIndicatorTitle,
          description: localizations.demoLinearProgressIndicatorDescription,
          documentationUrl:
              '$_docsBaseUrl/material/LinearProgressIndicator-class.html',
          buildRoute: (context) => ProgressIndicatorDemo(
            type: ProgressIndicatorDemoType.linear,
          ),
          code: CodeSegments.progressIndicatorsDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoSelectionControlsTitle,
      icon: GalleryIcons.checkBox,
      subtitle: localizations.demoSelectionControlsSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoSelectionControlsCheckboxTitle,
          description: localizations.demoSelectionControlsCheckboxDescription,
          documentationUrl: '$_docsBaseUrl/material/Checkbox-class.html',
          buildRoute: (context) => SelectionControlsDemo(
            type: SelectionControlsDemoType.checkbox,
          ),
          code: CodeSegments.selectionControlsDemoCheckbox,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoSelectionControlsRadioTitle,
          description: localizations.demoSelectionControlsRadioDescription,
          documentationUrl: '$_docsBaseUrl/material/Radio-class.html',
          buildRoute: (context) => SelectionControlsDemo(
            type: SelectionControlsDemoType.radio,
          ),
          code: CodeSegments.selectionControlsDemoRadio,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoSelectionControlsSwitchTitle,
          description: localizations.demoSelectionControlsSwitchDescription,
          documentationUrl: '$_docsBaseUrl/material/Switch-class.html',
          buildRoute: (context) => SelectionControlsDemo(
            type: SelectionControlsDemoType.switches,
          ),
          code: CodeSegments.selectionControlsDemoSwitches,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoSlidersTitle,
      icon: GalleryIcons.sliders,
      subtitle: localizations.demoSlidersSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoSlidersTitle,
          description: localizations.demoSlidersDescription,
          documentationUrl: '$_docsBaseUrl/material/Slider-class.html',
          buildRoute: (context) => SlidersDemo(type: SlidersDemoType.sliders),
          code: CodeSegments.slidersDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoRangeSlidersTitle,
          description: localizations.demoRangeSlidersDescription,
          documentationUrl: '$_docsBaseUrl/material/RangeSlider-class.html',
          buildRoute: (context) =>
              SlidersDemo(type: SlidersDemoType.rangeSliders),
          code: CodeSegments.rangeSlidersDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoCustomSlidersTitle,
          description: localizations.demoCustomSlidersDescription,
          documentationUrl: '$_docsBaseUrl/material/SliderTheme-class.html',
          buildRoute: (context) =>
              SlidersDemo(type: SlidersDemoType.customSliders),
          code: CodeSegments.customSlidersDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoSnackbarsTitle,
      icon: GalleryIcons.snackbar,
      subtitle: localizations.demoSnackbarsSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoSnackbarsTitle,
          description: localizations.demoSnackbarsDescription,
          documentationUrl: '$_docsBaseUrl/material/SnackBar-class.html',
          buildRoute: (context) => SnackbarsDemo(),
          code: CodeSegments.snackbarsDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoTabsTitle,
      icon: GalleryIcons.tabs,
      subtitle: localizations.demoTabsSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoTabsScrollingTitle,
          description: localizations.demoTabsDescription,
          documentationUrl: '$_docsBaseUrl/material/TabBar-class.html',
          buildRoute: (context) => TabsDemo(type: TabsDemoType.scrollable),
          code: CodeSegments.tabsScrollableDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoTabsNonScrollingTitle,
          description: localizations.demoTabsDescription,
          documentationUrl: '$_docsBaseUrl/material/TabBar-class.html',
          buildRoute: (context) => TabsDemo(type: TabsDemoType.nonScrollable),
          code: CodeSegments.tabsNonScrollableDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoTextFieldTitle,
      icon: GalleryIcons.textFieldsAlt,
      subtitle: localizations.demoTextFieldSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoTextFieldTitle,
          description: localizations.demoTextFieldDescription,
          documentationUrl: '$_docsBaseUrl/material/TextField-class.html',
          buildRoute: (_) => TextFieldDemo(),
          code: CodeSegments.textFieldDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoTooltipTitle,
      icon: GalleryIcons.tooltip,
      subtitle: localizations.demoTooltipSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoTooltipTitle,
          description: localizations.demoTooltipDescription,
          documentationUrl: '$_docsBaseUrl/material/Tooltip-class.html',
          buildRoute: (_) => TooltipDemo(),
          code: CodeSegments.tooltipDemo,
        ),
      ],
    ),
  ];
}

List<GalleryDemo> cupertinoDemos(BuildContext context) {
  final localizations = GalleryLocalizations.of(context);
  return [
    GalleryDemo(
      title: localizations.demoCupertinoActivityIndicatorTitle,
      icon: GalleryIcons.cupertinoProgress,
      subtitle: localizations.demoCupertinoActivityIndicatorSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoCupertinoActivityIndicatorTitle,
          description: localizations.demoCupertinoActivityIndicatorDescription,
          documentationUrl:
              '$_docsBaseUrl/cupertino/CupertinoActivityIndicator-class.html',
          buildRoute: (_) => CupertinoProgressIndicatorDemo(),
          code: CodeSegments.cupertinoActivityIndicatorDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoCupertinoAlertsTitle,
      icon: GalleryIcons.dialogs,
      subtitle: localizations.demoCupertinoAlertsSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoCupertinoAlertTitle,
          description: localizations.demoCupertinoAlertDescription,
          documentationUrl:
              '$_docsBaseUrl/cupertino/CupertinoAlertDialog-class.html',
          buildRoute: (_) => CupertinoAlertDemo(type: AlertDemoType.alert),
          code: CodeSegments.cupertinoAlertDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoCupertinoAlertWithTitleTitle,
          description: localizations.demoCupertinoAlertDescription,
          documentationUrl:
              '$_docsBaseUrl/cupertino/CupertinoAlertDialog-class.html',
          buildRoute: (_) => CupertinoAlertDemo(type: AlertDemoType.alertTitle),
          code: CodeSegments.cupertinoAlertDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoCupertinoAlertButtonsTitle,
          description: localizations.demoCupertinoAlertDescription,
          documentationUrl:
              '$_docsBaseUrl/cupertino/CupertinoAlertDialog-class.html',
          buildRoute: (_) =>
              CupertinoAlertDemo(type: AlertDemoType.alertButtons),
          code: CodeSegments.cupertinoAlertDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoCupertinoAlertButtonsOnlyTitle,
          description: localizations.demoCupertinoAlertDescription,
          documentationUrl:
              '$_docsBaseUrl/cupertino/CupertinoAlertDialog-class.html',
          buildRoute: (_) =>
              CupertinoAlertDemo(type: AlertDemoType.alertButtonsOnly),
          code: CodeSegments.cupertinoAlertDemo,
        ),
        GalleryDemoConfiguration(
          title: localizations.demoCupertinoActionSheetTitle,
          description: localizations.demoCupertinoActionSheetDescription,
          documentationUrl:
              '$_docsBaseUrl/cupertino/CupertinoActionSheet-class.html',
          buildRoute: (_) =>
              CupertinoAlertDemo(type: AlertDemoType.actionSheet),
          code: CodeSegments.cupertinoAlertDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoCupertinoButtonsTitle,
      icon: GalleryIcons.genericButtons,
      subtitle: localizations.demoCupertinoButtonsSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoCupertinoButtonsTitle,
          description: localizations.demoCupertinoButtonsDescription,
          documentationUrl:
              '$_docsBaseUrl/cupertino/CupertinoButton-class.html',
          buildRoute: (_) => CupertinoButtonDemo(),
          code: CodeSegments.cupertinoButtonDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoCupertinoNavigationBarTitle,
      icon: GalleryIcons.bottomSheetPersistent,
      subtitle: localizations.demoCupertinoNavigationBarSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoCupertinoNavigationBarTitle,
          description: localizations.demoCupertinoNavigationBarDescription,
          documentationUrl:
              '$_docsBaseUrl/cupertino/CupertinoNavigationBar-class.html',
          buildRoute: (_) => CupertinoNavigationBarDemo(),
          code: CodeSegments.cupertinoNavigationBarDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoCupertinoPickerTitle,
      icon: GalleryIcons.event,
      subtitle: localizations.demoCupertinoPickerSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoCupertinoPickerTitle,
          description: localizations.demoCupertinoPickerDescription,
          documentationUrl:
              '$_docsBaseUrl/cupertino/CupertinoDatePicker-class.html',
          buildRoute: (_) => CupertinoPickerDemo(),
          code: CodeSegments.cupertinoPickersDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoCupertinoPullToRefreshTitle,
      icon: GalleryIcons.cupertinoPullToRefresh,
      subtitle: localizations.demoCupertinoPullToRefreshSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoCupertinoPullToRefreshTitle,
          description: localizations.demoCupertinoPullToRefreshDescription,
          documentationUrl:
              '$_docsBaseUrl/cupertino/CupertinoSliverRefreshControl-class.html',
          buildRoute: (_) => CupertinoRefreshControlDemo(),
          code: CodeSegments.cupertinoRefreshDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoCupertinoSegmentedControlTitle,
      icon: GalleryIcons.tabs,
      subtitle: localizations.demoCupertinoSegmentedControlSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoCupertinoSegmentedControlTitle,
          description: localizations.demoCupertinoSegmentedControlDescription,
          documentationUrl:
              '$_docsBaseUrl/cupertino/CupertinoSegmentedControl-class.html',
          buildRoute: (_) => CupertinoSegmentedControlDemo(),
          code: CodeSegments.cupertinoSegmentedControlDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoCupertinoSliderTitle,
      icon: GalleryIcons.sliders,
      subtitle: localizations.demoCupertinoSliderSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoCupertinoSliderTitle,
          description: localizations.demoCupertinoSliderDescription,
          documentationUrl:
              '$_docsBaseUrl/cupertino/CupertinoSlider-class.html',
          buildRoute: (_) => CupertinoSliderDemo(),
          code: CodeSegments.cupertinoSliderDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoSelectionControlsSwitchTitle,
      icon: GalleryIcons.cupertinoSwitch,
      subtitle: localizations.demoCupertinoSwitchSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoSelectionControlsSwitchTitle,
          description: localizations.demoCupertinoSwitchDescription,
          documentationUrl:
              '$_docsBaseUrl/cupertino/CupertinoSwitch-class.html',
          buildRoute: (_) => CupertinoSwitchDemo(),
          code: CodeSegments.cupertinoSwitchDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoCupertinoTabBarTitle,
      icon: GalleryIcons.bottomNavigation,
      subtitle: localizations.demoCupertinoTabBarSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoCupertinoTabBarTitle,
          description: localizations.demoCupertinoTabBarDescription,
          documentationUrl:
              '$_docsBaseUrl/cupertino/CupertinoTabBar-class.html',
          buildRoute: (_) => CupertinoTabBarDemo(),
          code: CodeSegments.cupertinoNavigationDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoCupertinoTextFieldTitle,
      icon: GalleryIcons.textFieldsAlt,
      subtitle: localizations.demoCupertinoTextFieldSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoCupertinoTextFieldTitle,
          description: localizations.demoCupertinoTextFieldDescription,
          documentationUrl:
              '$_docsBaseUrl/cupertino/CupertinoTextField-class.html',
          buildRoute: (_) => CupertinoTextFieldDemo(),
          code: CodeSegments.cupertinoTextFieldDemo,
        ),
      ],
    ),
  ];
}

List<GalleryDemo> referenceDemos(BuildContext context) {
  final localizations = GalleryLocalizations.of(context);
  return [
    GalleryDemo(
      title: localizations.demoColorsTitle,
      icon: GalleryIcons.colors,
      subtitle: localizations.demoColorsSubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoColorsTitle,
          description: localizations.demoColorsDescription,
          documentationUrl: '$_docsBaseUrl/material/MaterialColor-class.html',
          buildRoute: (_) => ColorsDemo(),
          code: CodeSegments.colorsDemo,
        ),
      ],
    ),
    GalleryDemo(
      title: localizations.demoTypographyTitle,
      icon: GalleryIcons.customTypography,
      subtitle: localizations.demoTypographySubtitle,
      configurations: [
        GalleryDemoConfiguration(
          title: localizations.demoTypographyTitle,
          description: localizations.demoTypographyDescription,
          documentationUrl: '$_docsBaseUrl/material/TextTheme-class.html',
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
    return Theme(
      data: MaterialDemoThemeData.themeData.copyWith(
        platform: GalleryOptions.of(context).platform,
      ),
      child: ApplyTextOptions(
        child: CupertinoTheme(
          data: CupertinoThemeData().copyWith(brightness: Brightness.light),
          child: child,
        ),
      ),
    );
  }
}
