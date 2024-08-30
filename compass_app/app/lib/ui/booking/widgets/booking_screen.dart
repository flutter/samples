import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/routes.dart';
import '../../core/localization/applocalization.dart';
import '../../core/ui/error_indicator.dart';
import '../view_models/booking_viewmodel.dart';
import 'booking_body.dart';
import 'booking_share_button.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({
    super.key,
    required this.viewModel,
  });

  final BookingViewModel viewModel;

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.shareBooking.addListener(_listener);
  }

  @override
  void dispose() {
    widget.viewModel.shareBooking.removeListener(_listener);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, r) {
        if (!didPop) context.go(Routes.activities);
      },
      child: Scaffold(
        body: ListenableBuilder(
          listenable: widget.viewModel.createBooking,
          builder: (context, child) {
            if (widget.viewModel.createBooking.running) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (widget.viewModel.createBooking.error) {
              return Center(
                child: ErrorIndicator(
                  title: AppLocalization.of(context).errorWhileLoadingBooking,
                  label: AppLocalization.of(context).tryAgain,
                  onPressed: widget.viewModel.createBooking.execute,
                ),
              );
            }
            return child!;
          },
          child: Stack(
            children: [
              BookingBody(viewModel: widget.viewModel),
              BookingShareButton(viewModel: widget.viewModel),
            ],
          ),
        ),
      ),
    );
  }

  void _listener() {
    if (widget.viewModel.shareBooking.error) {
      widget.viewModel.shareBooking.clearResult();
      // TODO show error
    }
  }
}
