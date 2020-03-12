import 'package:flutter/material.dart';

/*
* First Page
* */
class HeroAnimation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero Animation'),
      ),
      body: GestureDetector(
        onTap: () => Navigator.of(context).push<void>(PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => DetailPage(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return child;
          },
        )),
        child: Hero(
          tag: 'HeroImage',
          child: Container(
            padding: EdgeInsets.all(25),
            height: 200,
            width: 200,
            child: ClipRRect(
              child: Image.asset('assets/eat_sydney.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}

/*
* Second Page
*/
class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail Image'),
        ),
        body: Container(
          color: Colors.black26,
          child: Center(
            child: Hero(
              tag: 'HeroImage',
              child: Image.asset('assets/eat_sydney.jpg'),
            ),
          ),
        ));
  }
}
