import 'package:flutter/material.dart';
import 'package:educate_app/tekisei3.dart';

//import 'package:tekisei3/majore.dart';

class TekiseiSecond extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TekiseiTwo(title: 'Flutter Demo Home Page'),
    );
  }
}

class TekiseiTwo extends StatefulWidget {
  TekiseiTwo({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TekiseiTwo createState() => _TekiseiTwo();
}

class _TekiseiTwo extends State<TekiseiTwo> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("適性検査"),
        ),
        body: Card(
          elevation: 4.0,
          margin: const EdgeInsets.all(1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _titleArea(),
              Image.asset('images/car.png'),
              _buttonArea(),
            ],
          ),
        ));
  }

  Widget _titleArea() {
    return Container(
        margin: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              "第２問",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              textAlign: TextAlign.left,
            ),

            // 2行目
            Text(
              "ものを直すのが苦じゃない",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.left,
            ),
          ],
        ));
  }

  Widget _buttonArea() {
    return Container(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
      child: Row(
        // 1行目
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FlatButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.red)),
            color: Colors.white,
            textColor: Colors.red,
            padding: EdgeInsets.all(8.0),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TekiseiThird()),
              );
            },
            child: Text(
              "Yes".toUpperCase(),
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(width: 10),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Colors.red)),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TekiseiThird()),
              );
            },
            color: Colors.red,
            textColor: Colors.white,
            child: Text("No".toUpperCase(), style: TextStyle(fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
