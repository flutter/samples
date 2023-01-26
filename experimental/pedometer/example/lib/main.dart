import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:fl_chart/fl_chart.dart';

import 'steps_repo.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class RoundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final diameter = size.shortestSide * 1.5;
    final x = -(diameter - size.width) / 2;
    final y = size.height - diameter;
    final rect = Offset(x, y) & Size(diameter, diameter);
    return Path()..addOval(rect);
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var hourlySteps = <Steps>[];
  DateTime? lastUpdated;

  @override
  void initState() {
    runPedometer();
    super.initState();
  }

  void runPedometer() async {
    final now = DateTime.now();
    hourlySteps = await StepsRepo.instance.getSteps();
    lastUpdated = now;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final barGroups = hourlySteps
        .map(
          (e) => BarChartGroupData(
            x: int.parse(e.startHour),
            barRods: [
              BarChartRodData(
                color: Colors.blue[900],
                toY: e.steps.toDouble() / 100,
              )
            ],
          ),
        )
        .toList();

    return Scaffold(
        body: Stack(
      children: [
        ClipPath(
          clipper: RoundClipper(),
          child: FractionallySizedBox(
            heightFactor: 0.55,
            widthFactor: 1,
            child: Container(color: Colors.blue[300]),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(
              children: [
                lastUpdated != null
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 50.0),
                        child: Text(
                          DateFormat.yMMMMd('en_US').format(lastUpdated!),
                          style: textTheme.titleLarge!
                              .copyWith(color: Colors.blue[900]),
                        ),
                      )
                    : const SizedBox(height: 0),
                Text(
                  hourlySteps.fold(0, (t, e) => t + e.steps).toString(),
                  style: textTheme.displayMedium!.copyWith(color: Colors.white),
                ),
                Text(
                  'steps',
                  style: textTheme.titleLarge!.copyWith(color: Colors.white),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: GestureDetector(
            onTap: runPedometer,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[900],
                  shape: BoxShape.circle,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.refresh,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
            child: AspectRatio(
              aspectRatio: 1.2,
              child: BarChart(
                BarChartData(
                  titlesData: FlTitlesData(
                    show: true,
                    // Top titles are null
                    topTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: false,
                      ),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        getTitlesWidget: getBottomTitles,
                      ),
                    ),
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  barGroups: barGroups,
                  gridData: FlGridData(show: false),
                  alignment: BarChartAlignment.spaceAround,
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

// Axis labels for bottom of chart
Widget getBottomTitles(double value, TitleMeta meta) {
  String text;
  switch (value.toInt()) {
    case 0:
      text = '12AM';
      break;
    case 6:
      text = '6AM';
      break;
    case 12:
      text = '12PM';
      break;
    case 18:
      text = '6PM';
      break;
    default:
      text = '';
  }
  return SideTitleWidget(
    axisSide: meta.axisSide,
    space: 4,
    child: Text(text, style: TextStyle(fontSize: 14, color: Colors.blue[900])),
  );
}
