import 'package:flutter_rocket_example/models/counter_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rocket/flutter_rocket.dart';

/// A StatelessWidget that displays a counter example.
class CounterExample extends StatelessWidget {
  final String title;

  /// Constructs a CounterExample widget with [title].
  CounterExample({Key? key, required this.title}) : super(key: key);

  final Counter counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Number of once call parameter called & you can also click on add icon',
              textAlign: TextAlign.center,
            ),
            RocketView(
              model: counter,

              /// The function that will be called when the RocketView
              /// is triggered by a stream.
              ///
              /// This function will increment the count value of the `Counter`
              /// instance after a delay of one second.
              call: add,

              /// The type of call that will trigger the `call` function.
              ///
              /// We are using `CallType.callAsStream` to increment the counter
              /// every second.
              callType: CallType.callAsStream,

              /// The number of seconds to wait between each stream of
              /// data from the server.
              secondsOfStream: 1,

              /// The widget builder function that will be called whenever
              /// the RocketView is updated.
              ///
              /// In this case, we are returning a `Text` widget that displays
              /// the current count value of the `Counter` instance.
              builder: (context, modelState) {
                return Text(
                  counter.count.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,

        /// The function that will be called when the user clicks
        /// the floating action button.
        ///
        /// This function will decrement the count value of the `Counter`
        /// instance by one.
        onPressed: () {
          counter.fromJson({Counter.countKey: counter.count - 1});
        },
        tooltip: 'Decrement',
        child: const Icon(Icons.minimize),
      ),
    );
  }

  /// Asynchronously increments the count after a delay of one second.
  Future<void> add() async {
    await Future.delayed(const Duration(seconds: 1));
    counter.fromJson({Counter.countKey: counter.count + 1});
  }
}
