import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../core/localization/applocalization.dart';
import '../../core/ui/error_indicator.dart';
import '../view_models/booking_viewmodel.dart';

class BookingBody extends StatelessWidget {
  const BookingBody({
    super.key,
    required this.viewModel,
  });

  final BookingViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
      listenable: viewModel.loadBooking,
      builder: (context, child) {
        if (viewModel.loadBooking.completed) {
          return child!;
        }
        if (viewModel.loadBooking.error) {
          return Center(
            child: ErrorIndicator(
              title: 'Error loading booking',
              label: AppLocalization.of(context).tryAgain,
              onPressed: viewModel.loadBooking.execute,
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      child: ListenableBuilder(
        listenable: viewModel,
        builder: (context, _) {
          final booking = viewModel.booking;
          if (booking == null) return const SizedBox();
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child:
                    CachedNetworkImage(imageUrl: booking.destination.imageUrl),
              ),
            ],
          );
        },
      ),
    );
  }
}
