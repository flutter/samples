import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:web_dashboard/src/api/api.dart';
import 'package:web_dashboard/src/app.dart';

class EditItemForm extends StatelessWidget {
  final Item item;
  final VoidCallback onDone;

  EditItemForm({
    this.item,
    this.onDone,
  });

  @override
  Widget build(BuildContext context) {
    var api = Provider.of<AppState>(context).api;
    return Column(
      children: [
        RaisedButton(
          onPressed: () {
            // Depending on the situation, it may make sense to wait for this
            // Future to complete before notifying any onDone() listeners. In
            // this case, we can close the dialog right away.
            //
            // TODO: add onError to the API and handle errors
            api.items.delete(item.id);
            onDone();
          },
          child: Text('Delete'),
        ),
        RaisedButton(
          onPressed: () {
            onDone();
          },
          child: Text('Done'),
        ),
      ],
    );
  }
}
