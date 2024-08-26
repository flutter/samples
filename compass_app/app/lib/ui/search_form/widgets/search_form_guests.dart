import 'package:flutter/material.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/dimens.dart';
import '../view_models/search_form_viewmodel.dart';

/// Number of guests selection form
///
/// Users can tap the Plus and Minus icons to increase or decrease
/// the number of guests.
class SearchFormGuests extends StatelessWidget {
  const SearchFormGuests({
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
                'Who',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              _QuantitySelector(viewModel),
            ],
          ),
        ),
      ),
    );
  }
}

class _QuantitySelector extends StatelessWidget {
  const _QuantitySelector(this.viewModel);

  final SearchFormViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            key: const ValueKey('remove_guests'),
            onTap: viewModel.decreaseGuests,
            child: const Icon(
              Icons.remove_circle_outline,
              color: AppColors.grey3,
            ),
          ),
          ListenableBuilder(
            listenable: viewModel,
            builder: (context, _) => Text(
              viewModel.searchFormState.guests.toString(),
              style: viewModel.searchFormState.guests == 0
                  ? Theme.of(context).inputDecorationTheme.hintStyle
                  : Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          InkWell(
            key: const ValueKey('add_guests'),
            onTap: viewModel.increaseGuests,
            child: const Icon(
              Icons.add_circle_outline,
              color: AppColors.grey3,
            ),
          ),
        ],
      ),
    );
  }
}
