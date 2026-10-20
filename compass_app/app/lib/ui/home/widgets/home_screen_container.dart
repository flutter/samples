// Copyright 2024 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../../../data/repositories/booking/booking_repository.dart';
import '../../../data/repositories/user/user_repository.dart';
import '../../../routing/routes.dart';
import '../../auth/logout/view_models/logout_viewmodel.dart';
import '../view_models/home_viewmodel.dart';
import 'home_screen.dart';

class HomeScreenContainer extends StatefulWidget {
  const HomeScreenContainer({super.key, required this.logoutViewModel});

  final LogoutViewModel logoutViewModel;

  @override
  State<HomeScreenContainer> createState() => _HomeScreenContainerState();
}

class _HomeScreenContainerState extends State<HomeScreenContainer> {
  late final HomeViewModel _viewModel;
  GoRouter? _router;
  String? _currentPath;

  @override
  void initState() {
    super.initState();

    _viewModel = HomeViewModel(
      bookingRepository: context.read<BookingRepository>(),
      userRepository: context.read<UserRepository>(),
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final router = GoRouter.of(context);
    if (identical(_router, router)) return;

    _router?.routerDelegate.removeListener(_onRouteChanged);
    _router = router;
    _currentPath = router.routerDelegate.currentConfiguration.uri.path;
    router.routerDelegate.addListener(_onRouteChanged);
  }

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      viewModel: _viewModel,
      logoutViewModel: widget.logoutViewModel,
    );
  }

  @override
  void dispose() {
    _router?.routerDelegate.removeListener(_onRouteChanged);
    _viewModel.dispose();
    super.dispose();
  }

  void _onRouteChanged() {
    final path = _router!.routerDelegate.currentConfiguration.uri.path;
    if (path == Routes.home && _currentPath != Routes.home) {
      _viewModel.load.execute();
    }
    _currentPath = path;
  }
}
