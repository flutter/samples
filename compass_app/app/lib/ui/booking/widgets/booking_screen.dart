import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/localization/applocalization.dart';
import '../../core/themes/dimens.dart';
import '../../core/ui/back_button.dart';
import '../../core/ui/error_indicator.dart';
import '../../core/ui/home_button.dart';
import '../view_models/booking_viewmodel.dart';
import 'booking_body.dart';
import 'booking_share_button.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({
    super.key,
    required this.viewModel,
  });

  final BookingViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListenableBuilder(
        listenable: viewModel.loadBooking,
        builder: (context, child) {
          if (viewModel.loadBooking.running) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (viewModel.loadBooking.error) {
            return Center(
              child: ErrorIndicator(
                title: AppLocalization.of(context).errorWhileLoadingBooking,
                label: AppLocalization.of(context).tryAgain,
                onPressed: viewModel.loadBooking.execute,
              ),
            );
          }
          return child!;
        },
        child: Stack(
          children: [
            BookingBody(viewModel: viewModel),
            BookingShareButton(viewModel: viewModel),
          ],
        ),
      ),
    );
  }
}
