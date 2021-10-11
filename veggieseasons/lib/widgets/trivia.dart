import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:veggieseasons/data/app_state.dart';
import 'package:veggieseasons/data/veggie.dart';
import 'package:veggieseasons/styles.dart';

/// Presents a series of trivia questions about a particular widget, and tracks
/// the user's score.
class TriviaView extends StatefulWidget {
  final int? id;
  final String? restorationId;

  const TriviaView({this.id, this.restorationId, Key? key}) : super(key: key);

  @override
  _TriviaViewState createState() => _TriviaViewState();
}

/// Possible states of the game.
enum PlayerStatus {
  readyToAnswer,
  wasCorrect,
  wasIncorrect,
}

class _TriviaViewState extends State<TriviaView> with RestorationMixin {
  /// Current app state. This is used to fetch veggie data.
  late AppState appState;

  /// The veggie trivia about which to show.
  late Veggie veggie;

  /// Index of the current trivia question.
  RestorableInt triviaIndex = RestorableInt(0);

  /// User's score on the current veggie.
  RestorableInt score = RestorableInt(0);

  /// Trivia question currently being displayed.
  Trivia get currentTrivia => veggie.trivia[triviaIndex.value];

  /// The current state of the game.
  _RestorablePlayerStatus status =
      _RestorablePlayerStatus(PlayerStatus.readyToAnswer);

  @override
  String? get restorationId => widget.restorationId;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(triviaIndex, 'index');
    registerForRestoration(score, 'score');
    registerForRestoration(status, 'status');
  }

  // Called at init and again if any dependencies (read: InheritedWidgets) on
  // on which this object relies are changed.
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final newAppState = Provider.of<AppState>(context);

    setState(() {
      appState = newAppState;
      veggie = appState.getVeggie(widget.id);
    });
  }

  // Called when the widget associated with this object is swapped out for a new
  // one. If the new widget has a different Veggie ID value, the state object
  // needs to do a little work to reset itself for the new Veggie.
  @override
  void didUpdateWidget(TriviaView oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.id != widget.id) {
      setState(() {
        veggie = appState.getVeggie(widget.id);
      });

      _resetGame();
    }
  }

  @override
  void dispose() {
    triviaIndex.dispose();
    score.dispose();
    status.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (triviaIndex.value >= veggie.trivia.length) {
      return _buildFinishedView();
    } else if (status.value == PlayerStatus.readyToAnswer) {
      return _buildQuestionView();
    } else {
      return _buildResultView();
    }
  }

  void _resetGame() {
    setState(() {
      triviaIndex.value = 0;
      score.value = 0;
      status.value = PlayerStatus.readyToAnswer;
    });
  }

  void _processAnswer(int answerIndex) {
    setState(() {
      if (answerIndex == currentTrivia.correctAnswerIndex) {
        status.value = PlayerStatus.wasCorrect;
        score.value++;
      } else {
        status.value = PlayerStatus.wasIncorrect;
      }
    });
  }

  // Widget shown when the game is over. It includes the score and a button to
  // restart everything.
  Widget _buildFinishedView() {
    final themeData = CupertinoTheme.of(context);

    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Text(
            'All done!',
            style: Styles.triviaFinishedTitleText(themeData),
          ),
          const SizedBox(height: 16),
          Text('You answered', style: themeData.textTheme.textStyle),
          Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                '${score.value}',
                style: Styles.triviaFinishedBigText(themeData),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(' of ', style: themeData.textTheme.textStyle),
              ),
              Text(
                '${veggie.trivia.length}',
                style: Styles.triviaFinishedBigText(themeData),
              ),
            ],
          ),
          Text('questions correctly!', style: themeData.textTheme.textStyle),
          const SizedBox(height: 16),
          CupertinoButton(
            child: const Text('Try Again'),
            onPressed: () => _resetGame(),
          ),
        ],
      ),
    );
  }

  // Presents the current trivia's question and answer choices.
  Widget _buildQuestionView() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Text(
            currentTrivia.question,
            style: CupertinoTheme.of(context).textTheme.textStyle,
          ),
          const SizedBox(height: 32),
          for (int i = 0; i < currentTrivia.answers.length; i++)
            Padding(
              padding: const EdgeInsets.all(8),
              child: CupertinoButton(
                color: CupertinoColors.activeBlue,
                child: Text(
                  currentTrivia.answers[i],
                  textAlign: TextAlign.center,
                ),
                onPressed: () => _processAnswer(i),
              ),
            ),
        ],
      ),
    );
  }

  // Shows whether the last answer was right or wrong and prompts the user to
  // continue through the game.
  Widget _buildResultView() {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Text(
            status.value == PlayerStatus.wasCorrect
                ? 'That\'s right!'
                : 'Sorry, that wasn\'t the right answer.',
            style: CupertinoTheme.of(context).textTheme.textStyle,
          ),
          const SizedBox(height: 16),
          CupertinoButton(
            child: const Text('Next Question'),
            onPressed: () => setState(() {
              triviaIndex.value++;
              status.value = PlayerStatus.readyToAnswer;
            }),
          ),
        ],
      ),
    );
  }
}

class _RestorablePlayerStatus extends RestorableValue<PlayerStatus> {
  _RestorablePlayerStatus(this._defaultValue);

  final PlayerStatus _defaultValue;

  @override
  PlayerStatus createDefaultValue() {
    return _defaultValue;
  }

  @override
  PlayerStatus fromPrimitives(Object? data) {
    return PlayerStatus.values[data as int];
  }

  @override
  Object toPrimitives() {
    return value.index;
  }

  @override
  void didUpdateValue(PlayerStatus? oldValue) {
    notifyListeners();
  }
}
