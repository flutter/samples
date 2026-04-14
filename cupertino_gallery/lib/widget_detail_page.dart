import 'package:flutter/cupertino.dart';

import 'widgets/action_sheet_page.dart';
import 'widgets/activity_indicator_page.dart';
import 'widgets/alert_dialog_page.dart';
import 'widgets/button_page.dart';
import 'widgets/checkbox_page.dart';
import 'widgets/context_menu_page.dart';
import 'widgets/date_picker_page.dart';
import 'widgets/list_tile_page.dart';
import 'widgets/picker_page.dart';
import 'widgets/popup_surface_page.dart';
import 'widgets/radio_page.dart';
import 'widgets/scrollbar_page.dart';
import 'widgets/search_text_field_page.dart';
import 'widgets/segmented_control_page.dart';
import 'widgets/sheet_page.dart';
import 'widgets/slider_page.dart';
import 'widgets/sliding_segmented_control_page.dart';
import 'widgets/switch_page.dart';
import 'widgets/text_field_page.dart';
import 'widgets/text_theme_page.dart';
import 'widgets/time_picker_page.dart';

class WidgetDetailPage extends StatelessWidget {
  const WidgetDetailPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    switch (title) {
      case 'Action Sheet':
        return const ActionSheetPage();
      case 'Activity Indicator':
        return const ActivityIndicatorPage();
      case 'Alert Dialog':
        return const AlertDialogPage();
      case 'Button':
        return const ButtonPage();
      case 'Checkbox':
        return const CheckboxPage();
      case 'Context Menu':
        return const ContextMenuPage();
      case 'Date Picker':
        return const DatePickerPage();
      case 'List Tile':
        return const ListTilePage();
      case 'Picker':
        return const PickerPage();
      case 'Popup Surface':
        return const PopupSurfacePage();
      case 'Radio':
        return const RadioPage();
      case 'Scrollbar':
        return const ScrollbarPage();
      case 'Search Text Field':
        return const SearchTextFieldPage();
      case 'Segmented Control':
        return const SegmentedControlPage();
      case 'Sheet':
        return const SheetPage();
      case 'Slider':
        return const SliderPage();
      case 'Sliding Segmented Control':
        return const SlidingSegmentedControlPage();
      case 'Switch':
        return const SwitchPage();
      case 'Text Field':
        return const TextFieldPage();
      case 'Text Theme':
        return const TextThemePage();
      case 'Time Picker':
        return const TimePickerPage();
      default:
        return const CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            middle: Text('Widget Not Found'),
          ),
          child: Center(child: Text('Widget Not Found')),
        );
    }
  }
}
