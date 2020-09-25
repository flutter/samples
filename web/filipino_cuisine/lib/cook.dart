import 'package:flutter/material.dart';

class Cook extends StatefulWidget {
  final List dr;
  final img;
  final nme;

  Cook(this.dr, this.img, this.nme);
  CState createState() => CState();
}

class CState extends State<Cook> {
  List cb;

  initState() {
    super.initState();
    cb = List();
  }

  Widget build(ct) {
    List dr = widget.dr;
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.red,
            title: Text("INSTRUCTIONS"),
            centerTitle: true),
        body: Column(children: <Widget>[
          Container(
              child: ListTile(
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Hero(
                          tag: widget.nme,
                          child: Image.asset(widget.img,
                              fit: BoxFit.cover, width: 100, height: 100))),
                  title: Text(widget.nme,
                      style: Theme.of(ct)
                          .textTheme
                          .headline3
                          .copyWith(fontFamily: 'ark', color: Colors.black))),
              margin: EdgeInsets.only(top: 40, bottom: 30, left: 20)),
          Expanded(
              child: ListView.builder(
                  itemCount: dr.length,
                  padding: EdgeInsets.all(10),
                  itemBuilder: (ct, i) {
                    cb.add(false);
                    return ListTile(
                        title: Text(dr[i]),
                        trailing: Checkbox(
                            value: cb[i],
                            onChanged: (v) => setState(() => cb[i] = v)));
                  })),
        ]));
  }
}
