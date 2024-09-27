// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../routing/routes.dart';
import '../../core/localization/applocalization.dart';
import '../../core/ui/error_indicator.dart';
import '../view_models/booking_viewmodel.dart';
import 'booking_body.dart';

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
        // Back navigation always goes to home
        if (!didPop) context.go(Routes.home);
      },
      child: Scaffold(
        floatingActionButton: ListenableBuilder(
          listenable: widget.viewModel,
          builder: (context, _) => FloatingActionButton.extended(
            // Workaround for https://github.com/flutter/flutter/issues/115358#issuecomment-2117157419
            heroTag: null,
            key: const ValueKey('share-button'),
            onPressed: widget.viewModel.booking != null
                ? widget.viewModel.shareBooking.execute
                : null,
            label: Text(AppLocalization.of(context).shareTrip),
            icon: const Icon(Icons.share_outlined),
          ),
        ),
        body: ListenableBuilder(
          // Listen to changes in both commands
          listenable: Listenable.merge([
            widget.viewModel.createBooking,
            widget.viewModel.loadBooking,
          ]),
          builder: (context, child) {
            // If either command is running, show progress indicator
            if (widget.viewModel.createBooking.running ||
                widget.viewModel.loadBooking.running) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            // If fails to create booking, tap to try again
            if (widget.viewModel.createBooking.error) {
              return Center(
                child: ErrorIndicator(
                  title: AppLocalization.of(context).errorWhileLoadingBooking,
                  label: AppLocalization.of(context).tryAgain,
                  onPressed: widget.viewModel.createBooking.execute,
                ),
              );
            }
            // If existing booking fails to load, tap to go /home
            if (widget.viewModel.loadBooking.error) {
              return Center(
                child: ErrorIndicator(
                  title: AppLocalization.of(context).errorWhileLoadingBooking,
                  label: AppLocalization.of(context).close,
                  onPressed: () => context.go(Routes.home),
                ),
              );
            }
            return child!;
          },
          child: BookingBody(viewModel: widget.viewModel),
        ),
      ),
    );
  }

  void _listener() {
    if (widget.viewModel.shareBooking.error) {
      widget.viewModel.shareBooking.clearResult();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text(AppLocalization.of(context).errorWhileSharing),
        action: SnackBarAction(
          label: AppLocalization.of(context).tryAgain,
          onPressed: widget.viewModel.shareBooking.execute,
        ),
      ));
    }
  }
}
