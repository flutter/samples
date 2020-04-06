import 'package:flutter/material.dart';
import 'package:web_dashboard/src/api/api.dart';

import 'edit_item.dart';

class ItemChart extends StatelessWidget {
  final Item item;

  ItemChart({
    @required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("${item.name}"),
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () {
            showDialog(
              context: context,
              child: Builder(
                builder: (context) => SimpleDialog(
                  children: [
                    EditItemForm(
                      item: item,
                      onDone: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
