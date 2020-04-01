import 'package:flutter/material.dart';

class GridExperiment extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Scrollbar(
          child: GridView(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 2,
              maxCrossAxisExtent: 500,
            ),
            children: [
              Card(
                child: Center(
                  child: Text("A"),
                ),
              ),
              Card(
                child: Center(
                  child: Text("B"),
                ),
              ),
              Card(
                child: Center(
                  child: Text("C"),
                ),
              ),
              Card(
                child: Center(
                  child: Text("D"),
                ),
              ),
              Card(
                child: Center(
                  child: Text("E"),
                ),
              ),
              Card(
                child: Center(
                  child: Text("F"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
