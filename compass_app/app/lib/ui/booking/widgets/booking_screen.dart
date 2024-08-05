import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../core/themes/dimens.dart';
import '../../core/ui/back_button.dart';
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
      body: Stack(
        children: [
          BookingBody(viewModel: viewModel),
          Positioned(
            left: Dimens.of(context).paddingScreenHorizontal,
            top: Dimens.of(context).paddingScreenVertical,
            child: CustomBackButton(
              onTap: () => context.go('/activities'),
              blur: true,
            ),
          ),
          Positioned(
            right: Dimens.of(context).paddingScreenHorizontal,
            top: Dimens.of(context).paddingScreenVertical,
            child: const HomeButton(
              blur: true,
            ),
          ),
          BookingShareButton(viewModel: viewModel),
        ],
      ),
    );
  }
}
