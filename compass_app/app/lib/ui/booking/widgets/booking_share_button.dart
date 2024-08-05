import 'package:flutter/material.dart';

import '../../core/localization/applocalization.dart';
import '../../core/themes/dimens.dart';
import '../../core/ui/blur_filter.dart';
import '../view_models/booking_viewmodel.dart';

class BookingShareButton extends StatelessWidget {
  const BookingShareButton({
    super.key,
    required this.viewModel,
  });

  final BookingViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 0,
      child: ClipRect(
        child: SizedBox(
          height: (Dimens.of(context).paddingScreenVertical * 2) + 64,
          child: BackdropFilter(
            filter: kBlurFilter,
            child: SafeArea(
              bottom: true,
              child: Padding(
                padding: Dimens.of(context).edgeInsetsScreenSymmetric,
                child: FilledButton(
                  onPressed: viewModel.shareBooking.execute,
                  child: Text(AppLocalization.of(context).shareTrip),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
