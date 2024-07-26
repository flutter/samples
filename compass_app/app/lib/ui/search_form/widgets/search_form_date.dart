import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../core/ui/date_format_start_end.dart';
import '../../core/themes/colors.dart';
import '../view_models/search_form_viewmodel.dart';

/// Date selection form field.
///
/// Opens a date range picker dialog when tapped.
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
            lastDate: DateTime.now().add(const Duration(days: 365)),
          ).then((dateRange) => viewModel.dateRange = dateRange);
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
                Text(
                  'When',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                ListenableBuilder(
                  listenable: viewModel,
                  builder: (context, _) {
                    final dateRange = viewModel.dateRange;
                    if (dateRange != null) {
                      return Text(
                        dateFormatStartEnd(dateRange),
                        style: Theme.of(context).textTheme.bodyMedium,
                      );
                    } else {
                      return Text(
                        'Add Dates',
                        style: Theme.of(context).inputDecorationTheme.hintStyle,
                      );
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
