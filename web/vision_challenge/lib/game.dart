import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

setText(text, size, color) => Text(text,
    style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.bold,
        decoration: TextDecoration.none));

pad(double left, double top) => EdgeInsets.fromLTRB(left, top, 0, 0);

setBg(name) => BoxDecoration(
    image: DecorationImage(
        fit: BoxFit.cover,
        alignment: Alignment.topLeft,
        image: AssetImage(name)));

class Game extends StatelessWidget {
  final Store<AppState> store;
  Game(this.store);
  _grade(int score) => [10, 20, 30, 35, 40, 45, 99]
      .where((i) => i > score)
      .reduce(min)
      .toString();

  _createBoard(double size, List<List<int>> blocks, int depth,
          MaterialColor color) =>
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: blocks
              .map((cols) => Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: cols
                      .map((item) => Flexible(
                            child: GestureDetector(
                                onTap: () {
                                  if (item == 1) store.dispatch(Action.next);
                                },
                                child: Container(
                                    width: size,
                                    height: size,
                                    color: item > 0 ? color[depth] : color)),
                          ))
                      .toList()))
              .toList());

  @override
  Widget build(BuildContext context) => StoreConnector<AppState, AppState>(
      // onInit: (state) => ShakeDetector.autoStart(
      //     onPhoneShake: () => store.dispatch(Action.shake)),
      converter: (store) => store.state,
      builder: (context, state) {
        var w = MediaQuery.of(context).size.height / 16 * 9,
            size = w / (state.board.length + 1),
            depth = [1 + state.score ~/ 5, 4].reduce(min) * 100,
            colors = [
          Colors.blue,
          Colors.orange,
          Colors.pink,
          Colors.purple,
          Colors.cyan
        ];

        return Scaffold(
            backgroundColor: Color(0xFFBCE1F6),
            body: Center(
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.height / 16 * 9,
                child: Container(
                    decoration: setBg(state.page < 0 ? 'p0.jpg' : 'p1.jpg'),
                    child: state.page >= 0
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                                Container(
                                    height: w * 0.325,
                                    padding: pad(0, w * 0.145),
                                    child: setText(state.score.toString(),
                                        w * 0.2, Colors.white)),
                                Container(
                                    height: w * 0.35,
                                    padding: pad(w * 0.69, state.page * 7.0),
                                    child: state.page < 1
                                        ? Timer(
                                            onEnd: () =>
                                                store.dispatch(Action.end),
                                            width: w)
                                        : setText('End', w * 0.08, Colors.red)),
                                state.page < 1
                                    ? Container(
                                        width: w,
                                        height: w * 1.05,
                                        padding: pad(0, w * 0.05),
                                        child: _createBoard(
                                            size,
                                            state.board,
                                            depth,
                                            colors[
                                                state.count % colors.length]))
                                    : Container(
                                        width: w,
                                        height: w,
                                        decoration:
                                            setBg(_grade(state.score) + '.png'))
                              ])
                        : Container()),
              ),
            ),
            floatingActionButton: state.page != 0
                ? Container(
                    // width: w * 0.2,
                    // height: w * 0.2,
                    child: FloatingActionButton(
                        child: Icon(
                            state.page < 1 ? Icons.play_arrow : Icons.refresh),
                        onPressed: () => store.dispatch(Action.start)))
                : Container());
      });
}

class Timer extends StatefulWidget {
  Timer({this.onEnd, this.width});
  final VoidCallback onEnd;
  final double width;
  @override
  _TimerState createState() => _TimerState();
}

class _TimerState extends State<Timer> with TickerProviderStateMixin {
  Animation _animate;
  int _sec = 31;

  @override
  void initState() {
    super.initState();
    _animate = StepTween(begin: _sec, end: 0).animate(
        AnimationController(duration: Duration(seconds: _sec), vsync: this)
          ..forward(from: 0.0))
      ..addStatusListener((AnimationStatus s) {
        if (s == AnimationStatus.completed) widget.onEnd();
      });
  }

  @override
  Widget build(BuildContext context) => AnimatedBuilder(
      animation: _animate,
      builder: (BuildContext context, Widget child) => setText(
          _animate.value.toString().padLeft(2, '0'),
          widget.width * 0.12,
          Colors.green));
}

//REDUX
@immutable
class AppState {
  final int score, page, count;
  final List<List<int>> board;
  AppState({this.score, this.page, this.board, this.count});
  AppState.init()
      : score = 0,
        page = -1,
        count = 0,
        board = newBoard(0);
}

enum Action { next, end, start, shake }

AppState reducer(AppState s, act) {
  switch (act) {
    case Action.next:
      return AppState(
          score: s.score + 1,
          page: s.page,
          count: s.count,
          board: newBoard(s.score + 1));
    case Action.end:
      return AppState(
          score: s.score, page: 1, count: s.count + 1, board: s.board);
    case Action.start:
      return AppState(score: 0, page: 0, count: s.count, board: newBoard(0));
    case Action.shake:
      return AppState(
          score: s.score, page: s.page, count: s.count + 1, board: s.board);
    default:
      return s;
  }
}

List<List<int>> newBoard(score) {
  var size = score < 7 ? score + 3 : 10,
      rng = Random(),
      bingoRow = rng.nextInt(size),
      bingoCol = rng.nextInt(size);
  List<List<int>> board = [];
  for (var i = 0; i < size; i++) {
    List<int> row = [];
    for (var j = 0; j < size; j++)
      row.add(i == bingoRow && j == bingoCol ? 1 : 0);
    board.add(row);
  }
  return board;
}
