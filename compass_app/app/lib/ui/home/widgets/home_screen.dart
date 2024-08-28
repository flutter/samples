import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      body: ListenableBuilder(
        listenable: viewModel,
        builder: (context, _) {
          return Column(
            children: [
              Expanded(
                child: Column(
                  children: viewModel.bookings
                      .map((booking) => Text(booking.destinationName))
                      .toList(),
                ),
              ),
              FilledButton(
                onPressed: () => context.go('/search'),
                child: const Text('Book New Trip'),
              ),
            ],
          );
        },
      ),
    );
  }
}
