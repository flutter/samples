import 'package:flutter/material.dart';

import '../view_models/booking_viewmodel.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({
    super.key,
    required this.viewModel,
  });

  final BookingViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FilledButton(
        onPressed: viewModel.shareBooking.execute,
        child: const Text('Share'),
      ),
    );
  }
}
