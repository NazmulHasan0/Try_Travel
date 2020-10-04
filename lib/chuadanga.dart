import 'package:flutter/material.dart';

class Chuadanga extends StatefulWidget {
  @override
  _ChuadangaState createState() => _ChuadangaState();
}

class _ChuadangaState extends State<Chuadanga> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Chuadanga'),
        ),
        body: SafeArea(
          child: PageView(
            scrollDirection: Axis.horizontal,
            pageSnapping: false,
            children: <Widget>[
              _con('Description', 'asstes/pic5.jpg'),
              _con('Description', 'asstes/pic6.jpg'),
              _con('Description', 'asstes/pic7.jpg'),
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
