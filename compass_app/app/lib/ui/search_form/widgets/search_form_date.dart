import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/text_styles.dart';
import '../view_models/search_form_viewmodel.dart';

final _dateFormatDay = DateFormat('d');
final _dateFormatDayMonth = DateFormat('d MMM');

class SearchFormDate extends StatelessWidget {
  const SearchFormDate({
    super.key,
    required this.viewModel,
  });

  final SearchFormViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
      child: InkWell(
        borderRadius: BorderRadius.circular(16.0),
        onTap: () {
          showDateRangePicker(
              context: context,
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(const Duration(days: 365)))
              .then(
                (dateRange) => viewModel.dateRange = dateRange,
          );
        },
        child: Container(
          height: 64,
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.grey1),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'When',
                  style: TextStyles.title,
                ),
                ListenableBuilder(
                  listenable: viewModel,
                  builder: (context, child) => viewModel.dateRange != null
                      ? Text(
                          _dateFormat(viewModel.dateRange!),
                          style: TextStyles.text,
                        )
                      : const Text('Add Dates', style: TextStyles.hint),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _dateFormat(DateTimeRange dateTimeRange) {
    final start = dateTimeRange.start;
    final end = dateTimeRange.end;

    final dayMonthEnd = _dateFormatDayMonth.format(end);

    if (start.month == end.month) {
      final dayStart = _dateFormatDay.format(start);
      return '$dayStart - $dayMonthEnd';
    }

    final dayMonthStart = _dateFormatDayMonth.format(start);
    return '$dayMonthStart - $dayMonthEnd';
  }
}
