import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/models/booking/booking_summary.dart';
import '../../core/themes/dimens.dart';
import '../../core/ui/date_format_start_end.dart';
import '../view_models/home_viewmodel.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.viewModel,
  });

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => context.go('/search'),
        label: const Text('Book New Trip'),
        icon: const Icon(Icons.add_location_outlined),
      ),
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (context, _) {
          // TODO: Make scrollable
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: Dimens.of(context).paddingScreenVertical,
                  horizontal: Dimens.of(context).paddingScreenHorizontal,
                ),
                child: Text(
                  'Your bookings:',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: viewModel.bookings.length,
                  itemBuilder: (_, index) => _Booking(
                    key: ValueKey(index),
                    booking: viewModel.bookings[index],
                    onTap: () =>
                        context.go('/booking/${viewModel.bookings[index].id}'),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _Booking extends StatelessWidget {
  const _Booking({
    super.key,
    required this.booking,
    required this.onTap,
  });

  final BookingSummary booking;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.of(context).paddingScreenHorizontal,
          vertical: Dimens.paddingVertical,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              booking.destinationName,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              dateFormatStartEnd(
                DateTimeRange(
                  start: booking.startDate,
                  end: booking.endDate,
                ),
              ),
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
