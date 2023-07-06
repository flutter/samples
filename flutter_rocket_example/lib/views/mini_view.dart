import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rocket/flutter_rocket.dart';

class MiniView extends StatelessWidget {
  /// This is a widget that shows the usage of RocketMiniView,
  /// wraps other widgets and rebuilds them only when their values change.
  MiniView({Key? key, required this.title}) : super(key: key);

  /// The title of the widget
  final String title;

  /// This is a RocketValue with an initial value of "Initial value" of type String
  final RocketValue<String> rocketString = "Initial value".mini;

  /// This is a RocketValue with an initial value of 5 of type int
  final RocketValue<int> rocketNum = 5.mini;

  /// This is a RocketValue with an initial empty List value of type List<dynamic>
  final RocketValue<List> rocketList = [].mini;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("use View for every value"),
            RocketMiniView(
                value: rocketString, builder: () => Text(rocketString.v)),
            RocketMiniView(
              value: rocketNum,
              builder: () => Text(rocketNum.v.toString() +
                  (rocketNum.v.toString() == "11"
                      ? " click to remove listener"
                      : "")),
            ),
            RocketMiniView(
              value: rocketList,
              builder: () {
                return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: ListView.builder(
                      itemCount: rocketList.v.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Center(
                            child: Text(rocketList.v[index].toString()));
                      },
                    ));
              },
            ),
            const SizedBox(
              height: 60.0,
            ),
            const Text("merge multiple values"),
            RocketMiniView(
              value: RocketValue.merge([rocketString, rocketNum, rocketList]),
              builder: () => Wrap(
                runAlignment: WrapAlignment.center,
                children: [
                  Text(rocketString.v),
                  const Text("=>"),
                  Text(rocketNum.v.toString()),
                  const Text("=>"),
                  Text(rocketList.v.toString())
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {
          rocketNum.v++;
          rocketString.v = "Value Changed";
          // dont use methods for add items or remove it use instead of it +/-
          rocketList.v += [rocketNum.v, rocketString.v];
          if (rocketNum.v == 6) {
            rocketNum.registerListener(rocketMiniRebuild, valChanged);
            rocketNum.registerListener(rocketMergesRebuild, () {
              log('this listener called when widget of merges values rebuild');
            });
          }
          if (rocketNum.v == 12) {
            rocketNum.removeListener(rocketMiniRebuild, valChanged);
            log("listener removed!!!");
          }
        },
        tooltip: 'change Value',
        child: const Icon(Icons.change_circle),
      ),
    );
  }

  void valChanged() {
    log('this listener called when widget of mcNum rebuild');
  }
}
