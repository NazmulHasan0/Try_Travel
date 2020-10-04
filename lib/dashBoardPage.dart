import 'package:flutter/material.dart';
import 'package:hasan/chuadanga.dart';
import 'package:hasan/madaripur.dart';

class DashBoardPage extends StatefulWidget {
  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Search Place'),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.search),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.only(top: 35, left: 30, right: 30),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(15.0),
                child: RaisedButton(
                  color: Colors.amber,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    'Chuadanga',
                    style: TextStyle(fontSize: 30),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Chuadanga(),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15.0),
                child: RaisedButton(
                  color: Colors.amber,
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                  child: Text(
                    'Madaripur',
                    style: TextStyle(fontSize: 30),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Madaripur(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: ListView(
            children: <Widget>[
              Image.asset('asstes/pic1.jpg'),
              Image.asset('asstes/pic2.jpg'),
              Image.asset('asstes/pic3.jpg'),
              Image.asset('asstes/pic4.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}
