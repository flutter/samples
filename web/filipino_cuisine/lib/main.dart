import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'dart:convert';

import 'cook.dart';
import 'flutter_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(ct) {
    return MaterialApp(
        theme: ThemeData(
            brightness: Brightness.light,
            accentColor: Colors.red,
            iconTheme: IconThemeData(color: Colors.red)),
        title: "Filipino Cuisine",
        home: Home());
  }
}

class Home extends StatefulWidget {
  HState createState() => HState();
}

class HState extends State<Home> {
  Map fd;
  Map fi;

  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    http.Response r =
        await http.get('/data.json');
    fd = json.decode(r.body);
    setState(() => fi = fd['0']);
  }

  Widget build(ct) {
    if (fd == null)
      return Container(
          color: Colors.white,
          child: Center(
            child: CircularProgressIndicator(),
          ));
    var t = Theme.of(ct).textTheme;
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 5,
              child: Swiper(
                  onIndexChanged: (n) => setState(() => fi = fd['$n']),
                  itemCount:
                      fd.keys.where((key) => int.tryParse(key) != null).length,
                  itemBuilder: (cx, i) {
                    return Container(
                        margin: EdgeInsets.only(top: 40, bottom: 24),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Hero(
                              tag: fd['$i']['fn'],
                              child: Image.asset(fd['$i']['pf'],
                                  fit: BoxFit.cover)),
                        ));
                  },
                  viewportFraction: .85,
                  scale: .9)),
          Text(fi['fn'],
              style:
                  t.headline2.copyWith(fontFamily: 'ark', color: Colors.black)),
          Container(
            child: Text(fi['cn'],
                style: t.subtitle1.apply(color: Colors.red, fontFamily: 'opb')),
            margin: EdgeInsets.only(top: 10, bottom: 30),
          ),
          Container(
              child: Text(fi['dc'],
                  textAlign: TextAlign.center,
                  style: t.subtitle1.copyWith(fontFamily: 'opr')),
              margin: EdgeInsets.only(left: 10, right: 10)),
          Expanded(
              flex: 2,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: fi['ig'].length,
                  itemBuilder: (cx, i) {
                    return Row(children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          height: 60,
                          child: Image.asset(fi['ig'][i]['p'],
                              fit: BoxFit.contain)),
                      Container(
                          margin: EdgeInsets.only(left: 5, right: 10),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(fi['ig'][i]['n'],
                                    style: t.subtitle2
                                        .copyWith(fontFamily: 'opb')),
                                Text(fi['ig'][i]['c'],
                                    style:
                                        t.caption.copyWith(fontFamily: 'opr'))
                              ]))
                    ]);
                  }))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restaurant_menu),
        onPressed: () => Navigator.push(
            ct,
            MaterialPageRoute(
                builder: (cx) => Cook(fi['in'], fi['pf'], fi['fn']))),
      ),
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 4.0,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                    icon:
                        Icon(fi['fv'] ? Icons.favorite : Icons.favorite_border),
                    onPressed: () => setState(() => fi['fv'] = !fi['fv'])),
                IconButton(icon: Icon(Icons.share), onPressed: () {})
              ])),
    );
  }
}
