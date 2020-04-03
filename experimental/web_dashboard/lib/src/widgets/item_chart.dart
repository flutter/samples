import 'package:flutter/material.dart';
import 'package:web_dashboard/src/api/types.dart';

class ItemChart extends StatelessWidget {
  final Item item;

  ItemChart({
    @required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("${item.name}"),
    );
  }
}
