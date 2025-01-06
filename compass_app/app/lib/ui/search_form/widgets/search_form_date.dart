// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import '../../core/localization/applocalization.dart';
import '../../core/themes/colors.dart';
import '../../core/themes/dimens.dart';
import '../../core/ui/date_format_start_end.dart';
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
      padding: EdgeInsets.only(
        top: Dimens.paddingVertical,
        left: Dimens.of(context).paddingScreenHorizontal,
        right: Dimens.of(context).paddingScreenHorizontal,
      ),
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
            padding: const EdgeInsets.symmetric(
              horizontal: Dimens.paddingHorizontal,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalization.of(context).when,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                ListenableBuilder(
                  listenable: viewModel,
                  builder: (context, _) {
                    final dateRange = viewModel.dateRange;
                    if (dateRange != null) {
                      return Text(
                        dateFormatStartEnd(dateRange),
                        style: Theme.of(context).textTheme.bodyLarge,
                      );
                    } else {
                      return Text(
                        AppLocalization.of(context).addDates,
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
