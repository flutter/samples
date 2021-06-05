import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'cook.dart';
import 'flutter_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            accentColor: Colors.red,
            iconTheme: const IconThemeData(color: Colors.red)),
        title: "Filipino Cuisine",
        home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  HState createState() => HState();
}

class HState extends State<Home> {
  Map<String, dynamic> fd;
  Map<String, dynamic> fi;

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    http.Response r = await http.get('/data.json');
    fd = json.decode(r.body) as Map<String, dynamic>;
    setState(() => fi = fd['0'] as Map<String, dynamic>);
  }

  @override
  Widget build(context) {
    if (fd == null) {
      return Container(
        color: Colors.white,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    var t = Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 5,
              child: Swiper(
                  onIndexChanged: (n) =>
                      setState(() => fi = fd['$n'] as Map<String, dynamic>),
                  itemCount:
                      fd.keys.where((key) => int.tryParse(key) != null).length,
                  itemBuilder: (cx, i) {
                    return Container(
                        margin: const EdgeInsets.only(top: 40, bottom: 24),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Hero(
                              tag: fd['$i']['fn'],
                              child: Image.asset(fd['$i']['pf'] as String,
                                  fit: BoxFit.cover)),
                        ));
                  },
                  viewportFraction: .85,
                  scale: .9)),
          Text(fi['fn'] as String,
              style:
                  t.headline2.copyWith(fontFamily: 'ark', color: Colors.black)),
          Container(
            child: Text(fi['cn'] as String,
                style: t.subtitle1.apply(color: Colors.red, fontFamily: 'opb')),
            margin: const EdgeInsets.only(top: 10, bottom: 30),
          ),
          Container(
              child: Text(fi['dc'] as String,
                  textAlign: TextAlign.center,
                  style: t.subtitle1.copyWith(fontFamily: 'opr')),
              margin: const EdgeInsets.only(left: 10, right: 10)),
          Expanded(
              flex: 2,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: fi['ig'].length as int,
                  itemBuilder: (cx, i) {
                    return Row(children: <Widget>[
                      Container(
                          margin: const EdgeInsets.only(left: 10),
                          height: 60,
                          child: Image.asset(fi['ig'][i]['p'] as String,
                              fit: BoxFit.contain)),
                      Container(
                          margin: const EdgeInsets.only(left: 5, right: 10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(fi['ig'][i]['n'] as String,
                                    style: t.subtitle2
                                        .copyWith(fontFamily: 'opb')),
                                Text(fi['ig'][i]['c'] as String,
                                    style:
                                        t.caption.copyWith(fontFamily: 'opr'))
                              ]))
                    ]);
                  }))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.restaurant_menu),
        onPressed: () => Navigator.push<void>(
            context,
            MaterialPageRoute(
                builder: (cx) => Cook(
                      fi['in'] as List<String>,
                      fi['pf'] as String,
                      fi['fn'] as String,
                    ))),
      ),
      bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 4.0,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                    icon: Icon(fi['fv'] as bool
                        ? Icons.favorite
                        : Icons.favorite_border),
                    onPressed: () =>
                        setState(() => fi['fv'] = !(fi['fv'] as bool))),
                IconButton(icon: const Icon(Icons.share), onPressed: () {})
              ])),
    );
  }
}
