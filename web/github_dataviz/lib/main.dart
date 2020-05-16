// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:collection';
import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';
import 'package:github_dataviz/constants.dart';
import 'package:github_dataviz/data/contribution_data.dart';
import 'package:github_dataviz/data/data_series.dart';
import 'package:github_dataviz/data/stat_for_week.dart';
import 'package:github_dataviz/data/user_contribution.dart';
import 'package:github_dataviz/data/week_label.dart';
import 'package:github_dataviz/layered_chart.dart';
import 'package:github_dataviz/mathutils.dart';
import 'package:github_dataviz/timeline.dart';

class MainLayout extends StatefulWidget {
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> with TickerProviderStateMixin {
  AnimationController _animation;
  List<UserContribution> contributions;
  List<StatForWeek> starsByWeek;
  List<StatForWeek> forksByWeek;
  List<StatForWeek> pushesByWeek;
  List<StatForWeek> issueCommentsByWeek;
  List<StatForWeek> pullRequestActivityByWeek;
  List<WeekLabel> weekLabels;

  static final double earlyInterpolatorFraction = 0.8;
  static final EarlyInterpolator interpolator =
      EarlyInterpolator(earlyInterpolatorFraction);
  double animationValue = 1.0;
  double interpolatedAnimationValue = 1.0;
  bool timelineOverride = false;

  @override
  void initState() {
    super.initState();

    createAnimation(0);

    weekLabels = List();
    weekLabels.add(WeekLabel.forDate(DateTime(2019, 2, 26), "v1.2"));
    weekLabels.add(WeekLabel.forDate(DateTime(2018, 12, 4), "v1.0"));
//    weekLabels.add(WeekLabel.forDate(new DateTime(2018, 9, 19), "Preview 2"));
    weekLabels.add(WeekLabel.forDate(DateTime(2018, 6, 21), "Preview 1"));
//    weekLabels.add(WeekLabel.forDate(new DateTime(2018, 5, 7), "Beta 3"));
    weekLabels.add(WeekLabel.forDate(DateTime(2018, 2, 27), "Beta 1"));
    weekLabels.add(WeekLabel.forDate(DateTime(2017, 5, 1), "Alpha"));
    weekLabels.add(WeekLabel(48, "Repo Made Public"));

    loadGitHubData();
  }

  void createAnimation(double startValue) {
    _animation?.dispose();
    _animation = AnimationController(
      value: startValue,
      duration: const Duration(milliseconds: 14400),
      vsync: this,
    )..repeat();
    _animation.addListener(() {
      setState(() {
        if (!timelineOverride) {
          animationValue = _animation.value;
          interpolatedAnimationValue = interpolator.get(animationValue);
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // Combined contributions data
    List<DataSeries> dataToPlot = List();
    if (contributions != null) {
      List<int> series = List();
      for (UserContribution userContrib in contributions) {
        for (int i = 0; i < userContrib.contributions.length; i++) {
          ContributionData data = userContrib.contributions[i];
          if (series.length > i) {
            series[i] = series[i] + data.add;
          } else {
            series.add(data.add);
          }
        }
      }
      dataToPlot.add(DataSeries("Added Lines", series));
    }

    if (starsByWeek != null) {
      dataToPlot
          .add(DataSeries("Stars", starsByWeek.map((e) => e.stat).toList()));
    }

    if (forksByWeek != null) {
      dataToPlot
          .add(DataSeries("Forks", forksByWeek.map((e) => e.stat).toList()));
    }

    if (pushesByWeek != null) {
      dataToPlot
          .add(DataSeries("Pushes", pushesByWeek.map((e) => e.stat).toList()));
    }

    if (issueCommentsByWeek != null) {
      dataToPlot.add(DataSeries(
          "Issue Comments", issueCommentsByWeek.map((e) => e.stat).toList()));
    }

    if (pullRequestActivityByWeek != null) {
      dataToPlot.add(DataSeries("Pull Request Activity",
          pullRequestActivityByWeek.map((e) => e.stat).toList()));
    }

    LayeredChart layeredChart =
        LayeredChart(dataToPlot, weekLabels, interpolatedAnimationValue);

    const double timelinePadding = 60.0;

    var timeline = Timeline(
      numWeeks: dataToPlot != null && dataToPlot.length > 0
          ? dataToPlot.last.series.length
          : 0,
      animationValue: interpolatedAnimationValue,
      weekLabels: weekLabels,
      mouseDownCallback: (double xFraction) {
        setState(() {
          timelineOverride = true;
          _animation.stop();
          interpolatedAnimationValue = xFraction;
        });
      },
      mouseMoveCallback: (double xFraction) {
        setState(() {
          interpolatedAnimationValue = xFraction;
        });
      },
      mouseUpCallback: () {
        setState(() {
          timelineOverride = false;
          createAnimation(
              interpolatedAnimationValue * earlyInterpolatorFraction);
        });
      },
    );

    Column mainColumn = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(child: layeredChart),
        Padding(
          padding: const EdgeInsets.only(
              left: timelinePadding,
              right: timelinePadding,
              bottom: timelinePadding),
          child: timeline,
        ),
      ],
    );

    return Container(
      color: Constants.backgroundColor,
      child:
          Directionality(textDirection: TextDirection.ltr, child: mainColumn),
    );
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }

  Future loadGitHubData() async {
    String contributorsJsonStr =
        (await http.get("assets/github_data/contributors.json")).body;
    List jsonObjs = jsonDecode(contributorsJsonStr) as List;
    List<UserContribution> contributionList =
        jsonObjs.map((e) => UserContribution.fromJson(e)).toList();
    print(
        "Loaded ${contributionList.length} code contributions to /flutter/flutter repo.");

    int numWeeksTotal = contributionList[0].contributions.length;

    String starsByWeekStr =
        (await http.get("assets/github_data/stars.tsv")).body;
    List<StatForWeek> starsByWeekLoaded =
        summarizeWeeksFromTSV(starsByWeekStr, numWeeksTotal);

    String forksByWeekStr =
        (await http.get("assets/github_data/forks.tsv")).body;
    List<StatForWeek> forksByWeekLoaded =
        summarizeWeeksFromTSV(forksByWeekStr, numWeeksTotal);

    String commitsByWeekStr =
        (await http.get("assets/github_data/commits.tsv")).body;
    List<StatForWeek> commitsByWeekLoaded =
        summarizeWeeksFromTSV(commitsByWeekStr, numWeeksTotal);

    String commentsByWeekStr =
        (await http.get("assets/github_data/comments.tsv")).body;
    List<StatForWeek> commentsByWeekLoaded =
        summarizeWeeksFromTSV(commentsByWeekStr, numWeeksTotal);

    String pullRequestActivityByWeekStr =
        (await http.get("assets/github_data/pull_requests.tsv")).body;
    List<StatForWeek> pullRequestActivityByWeekLoaded =
        summarizeWeeksFromTSV(pullRequestActivityByWeekStr, numWeeksTotal);

    setState(() {
      this.contributions = contributionList;
      this.starsByWeek = starsByWeekLoaded;
      this.forksByWeek = forksByWeekLoaded;
      this.pushesByWeek = commitsByWeekLoaded;
      this.issueCommentsByWeek = commentsByWeekLoaded;
      this.pullRequestActivityByWeek = pullRequestActivityByWeekLoaded;
    });
  }

  List<StatForWeek> summarizeWeeksFromTSV(
      String statByWeekStr, int numWeeksTotal) {
    List<StatForWeek> loadedStats = List();
    HashMap<int, StatForWeek> statMap = HashMap();
    statByWeekStr.split("\n").forEach((s) {
      List<String> split = s.split("\t");
      if (split.length == 2) {
        int weekNum = int.parse(split[0]);
        statMap[weekNum] = StatForWeek(weekNum, int.parse(split[1]));
      }
    });
    print("Laoded ${statMap.length} weeks.");
    // Convert into a list by week, but fill in empty weeks with 0
    for (int i = 0; i < numWeeksTotal; i++) {
      StatForWeek starsForWeek = statMap[i];
      if (starsForWeek == null) {
        loadedStats.add(StatForWeek(i, 0));
      } else {
        loadedStats.add(starsForWeek);
      }
    }
    return loadedStats;
  }
}

void main() {
  runApp(Center(child: MainLayout()));
}
