import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../domain/models/booking/booking_summary.dart';
import '../../../routing/routes.dart';
import '../../auth/logout/view_models/logout_viewmodel.dart';
import '../../auth/logout/widgets/logout_button.dart';
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
        // Workaround for https://github.com/flutter/flutter/issues/115358#issuecomment-2117157419
        heroTag: null,
        key: const ValueKey('booking-button'),
        onPressed: () => context.go(Routes.search),
        label: const Text('Book New Trip'),
        icon: const Icon(Icons.add_location_outlined),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: ListenableBuilder(
          listenable: viewModel,
          builder: (context, _) {
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: Dimens.of(context).paddingScreenVertical,
                      horizontal: Dimens.of(context).paddingScreenHorizontal,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Your bookings:',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                        LogoutButton(
                          viewModel: LogoutViewModel(
                            authRepository: context.read(),
                            itineraryConfigRepository: context.read(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverList.builder(
                  itemCount: viewModel.bookings.length,
                  itemBuilder: (_, index) => _Booking(
                    key: ValueKey(index),
                    booking: viewModel.bookings[index],
                    onTap: () => context.push(
                        Routes.bookingWithId(viewModel.bookings[index].id)),
                  ),
                )
              ],
            );
          },
        ),
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
              booking.name,
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
