// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/models/booking/booking_summary.dart';
import '../../../routing/routes.dart';
import '../../core/localization/applocalization.dart';
import '../../core/themes/colors.dart';
import '../../core/themes/dimens.dart';
import '../../core/ui/date_format_start_end.dart';
import '../../core/ui/error_indicator.dart';
import '../view_models/home_viewmodel.dart';
import 'home_title.dart';

const String bookingButtonKey = 'booking-button';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
    required this.viewModel,
  });

  final HomeViewModel viewModel;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    widget.viewModel.deleteBooking.addListener(_onResult);
  }

  @override
  void didUpdateWidget(covariant HomeScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    oldWidget.viewModel.deleteBooking.removeListener(_onResult);
    widget.viewModel.deleteBooking.addListener(_onResult);
  }

  @override
  void dispose() {
    widget.viewModel.deleteBooking.removeListener(_onResult);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        // Workaround for https://github.com/flutter/flutter/issues/115358#issuecomment-2117157419
        heroTag: null,
        key: const ValueKey(bookingButtonKey),
        onPressed: () => context.go(Routes.search),
        label: Text(AppLocalization.of(context).bookNewTrip),
        icon: const Icon(Icons.add_location_outlined),
      ),
      body: SafeArea(
        top: true,
        bottom: true,
        child: ListenableBuilder(
          listenable: widget.viewModel.load,
          builder: (context, child) {
            if (widget.viewModel.load.running) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (widget.viewModel.load.error) {
              return ErrorIndicator(
                title: AppLocalization.of(context).errorWhileLoadingHome,
                label: AppLocalization.of(context).tryAgain,
                onPressed: widget.viewModel.load.execute,
              );
            }

            return child!;
          },
          child: ListenableBuilder(
            listenable: widget.viewModel,
            builder: (context, _) {
              return CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: Dimens.of(context).paddingScreenVertical,
                        horizontal: Dimens.of(context).paddingScreenHorizontal,
                      ),
                      child: HomeHeader(viewModel: widget.viewModel),
                    ),
                  ),
                  SliverList.builder(
                    itemCount: widget.viewModel.bookings.length,
                    itemBuilder: (_, index) => _Booking(
                      key: ValueKey(widget.viewModel.bookings[index].id),
                      booking: widget.viewModel.bookings[index],
                      onTap: () => context.push(Routes.bookingWithId(
                          widget.viewModel.bookings[index].id)),
                      confirmDismiss: (_) async {
                        // wait for command to complete
                        await widget.viewModel.deleteBooking.execute(
                          widget.viewModel.bookings[index].id,
                        );
                        // if command completed successfully, return true
                        if (widget.viewModel.deleteBooking.completed) {
                          // removes the dismissable from the list
                          return true;
                        } else {
                          // the dismissable stays in the list
                          return false;
                        }
                      },
                    ),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }

  void _onResult() {
    if (widget.viewModel.deleteBooking.completed) {
      widget.viewModel.deleteBooking.clearResult();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalization.of(context).bookingDeleted),
        ),
      );
    }

    if (widget.viewModel.deleteBooking.error) {
      widget.viewModel.deleteBooking.clearResult();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(AppLocalization.of(context).errorWhileDeletingBooking),
        ),
      );
    }
  }
}

class _Booking extends StatelessWidget {
  const _Booking({
    super.key,
    required this.booking,
    required this.onTap,
    required this.confirmDismiss,
  });

  final BookingSummary booking;
  final GestureTapCallback onTap;
  final ConfirmDismissCallback confirmDismiss;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(booking.id),
      direction: DismissDirection.endToStart,
      confirmDismiss: confirmDismiss,
      background: Container(
        color: AppColors.grey1,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(right: Dimens.paddingHorizontal),
              child: Icon(Icons.delete),
            ),
          ],
        ),
      ),
      child: InkWell(
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
      ),
    );
  }
}
