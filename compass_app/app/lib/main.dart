import 'package:compass_app/features/results/business/usecases/search_destination_usecase.dart';
import 'package:compass_app/features/results/data/destination_repository.dart';
import 'package:compass_app/features/results/presentation/results_screen.dart';
import 'package:compass_app/features/results/presentation/results_viewmodel.dart';
import 'package:compass_app/routing/router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
