import 'package:flutter/material.dart';

import '../../core/themes/colors.dart';
import '../../core/themes/text_styles.dart';
import '../view_models/search_form_viewmodel.dart';

class SearchFormGuests extends StatelessWidget {
  const SearchFormGuests({
    super.key,
    required this.viewModel,
  });

  final SearchFormViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 20, right: 20),
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
                'Who',
                style: TextStyles.title,
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
    return ListenableBuilder(
      listenable: viewModel,
      builder: (context, _) {
        return SizedBox(
          width: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  viewModel.guests--;
                },
                child: const Icon(
                  Icons.remove_circle_outline,
                  color: AppColors.grey3,
                ),
              ),
              Text(
                viewModel.guests.toString(),
                style: viewModel.guests == 0 ? TextStyles.hint : TextStyles.text,
              ),
              InkWell(
                onTap: () {
                  viewModel.guests++;
                },
                child: const Icon(
                  Icons.add_circle_outline,
                  color: AppColors.grey3,
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
