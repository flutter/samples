import 'package:flutter/material.dart';
import 'package:web_dashboard/src/api/api.dart';

class ItemDetailsPage extends StatelessWidget {
  final Item item;

  ItemDetailsPage(this.item);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text('${item.name}'),),
    );
  }
}
