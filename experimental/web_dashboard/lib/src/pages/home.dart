import 'package:flutter/material.dart';
import 'package:web_dashboard/src/services/app_service.dart';

class HomePage extends StatelessWidget {
  final ItemService itemService;

  HomePage({
    this.itemService,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('loading...'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          itemService.add('Coffees Drank');
        },
      ),
    );
  }
}
