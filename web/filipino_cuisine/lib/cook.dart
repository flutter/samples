import 'package:flutter/material.dart';

class Cook extends StatefulWidget {
  final List<String> dr;
  final String img;
  final String nme;

  const Cook(this.dr, this.img, this.nme);
  @override
  CState createState() => CState();
}

class CState extends State<Cook> {
  List<bool> cb;

  @override
  initState() {
    super.initState();
    cb = [];
  }

  @override
  Widget build(context) {
    List<String> dr = widget.dr;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("INSTRUCTIONS"),
          centerTitle: true),
      body: Column(
        children: <Widget>[
          Container(
              child: ListTile(
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Hero(
                          tag: widget.nme,
                          child: Image.asset(widget.img,
                              fit: BoxFit.cover, width: 100, height: 100))),
                  title: Text(widget.nme,
                      style: Theme.of(context)
                          .textTheme
                          .headline3
                          .copyWith(fontFamily: 'ark', color: Colors.black))),
              margin: const EdgeInsets.only(top: 40, bottom: 30, left: 20)),
          Expanded(
            child: ListView.builder(
              itemCount: dr.length,
              padding: const EdgeInsets.all(10),
              itemBuilder: (ct, i) {
                cb.add(false);
                return ListTile(
                    title: Text(dr[i]),
                    trailing: Checkbox(
                        value: cb[i],
                        onChanged: (v) => setState(() => cb[i] = v)));
              },
            ),
          ),
        ],
      ),
    );
  }
}
