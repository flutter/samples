import 'package:compass_app/features/results/business/model/destination.dart';
import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  const ResultCard({
    super.key,
    required this.destination,
  });

  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.network(
        destination.imageUrl,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
