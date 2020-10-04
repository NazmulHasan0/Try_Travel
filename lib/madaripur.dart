import 'package:flutter/material.dart';

class Madaripur extends StatefulWidget {
  @override
  _MadaripurState createState() => _MadaripurState();
}

class _MadaripurState extends State<Madaripur> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Madaripur'),
        ),
        body: SafeArea(
          child: PageView(
            scrollDirection: Axis.horizontal,
            pageSnapping: false,
            children: <Widget>[
              _con('Description', 'asstes/pic8.jpg'),
              _con('Description', 'asstes/pic9.jpg'),
              _con('Description', 'asstes/pic10.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _con(_text, _pic) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        height: 400,
        width: 400,
        child: Image.asset(
          _pic,
          fit: BoxFit.fill,
        ),
      ),
      Text(
        _text,
        style: TextStyle(fontSize: 30),
      )
    ],
  );
}
