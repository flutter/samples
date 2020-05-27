import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class FormWidgetsDemo extends StatefulWidget {
  @override
  _FormWidgetsDemoState createState() => _FormWidgetsDemoState();
}

class _FormWidgetsDemoState extends State<FormWidgetsDemo> {
  final _formKey = GlobalKey<FormState>();
  String title = "";
  String description = "";
  DateTime date;
  double maxValue = 0;
  bool brushedTeeth = false;
  bool enableFeature = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form widgets'),
      ),
      body: Form(
        key: _formKey,
        child: Scrollbar(
          child: Align(
            alignment: Alignment.topCenter,
            child: Card(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(16),
                child: ConstrainedBox(
                  constraints: BoxConstraints(maxWidth: 400),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...[
                        TextFormField(
                          decoration: InputDecoration(
                            filled: true,
                            hintText: 'Enter a title...',
                            labelText: 'Title',
                          ),
                          onChanged: (value) {
                            title = value;
                          },
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            filled: true,
                            hintText: 'Enter a description...',
                            labelText: 'Description',
                          ),
                          onChanged: (value) {
                            description = value;
                          },
                          maxLines: 5,
                        ),
                        _FormDatePicker(
                          onChanged: (value) {
                            date = value;
                          },
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Estimated value',
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ],
                            ),
                            Text(
                              intl.NumberFormat.currency(
                                      symbol: "\$", decimalDigits: 0)
                                  .format(maxValue),
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            Slider(
                              min: 0,
                              max: 500,
                              divisions: 500,
                              value: maxValue,
                              onChanged: (value) {
                                setState(() {
                                  maxValue = value;
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Checkbox(
                              value: brushedTeeth,
                              onChanged: (checked) {
                                setState(() {
                                  brushedTeeth = checked;
                                });
                              },
                            ),
                            Text('Brushed Teeth',
                                style: Theme.of(context).textTheme.subtitle1),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Enable feature',
                                style: Theme.of(context).textTheme.bodyText1),
                            Switch(
                              value: enableFeature,
                              onChanged: (enabled) {
                                setState(() {
                                  enableFeature = enabled;
                                });
                              },                      ),
                          ],
                        ),
                      ].expand(
                        (widget) => [
                          widget,
                          SizedBox(
                            height: 24,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _FormDatePicker extends StatefulWidget {
  final ValueChanged onChanged;

  _FormDatePicker({
    this.onChanged,
  });

  @override
  _FormDatePickerState createState() => _FormDatePickerState();
}

class _FormDatePickerState extends State<_FormDatePicker> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Date',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              intl.DateFormat.yMd().format(date),
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
        FlatButton(
          child: Text('Edit'),
          onPressed: () async {
            var newDate = await showDatePicker(
              context: context,
              initialDate: date,
              firstDate: DateTime(1900),
              lastDate: DateTime(2100),
            );

            // Don't change the date if the date picker returns null.
            if (newDate == null) {
              return;
            }

            setState(() {
              this.date = newDate;
            });

            widget.onChanged(date);
          },
        )
      ],
    );
  }
}
