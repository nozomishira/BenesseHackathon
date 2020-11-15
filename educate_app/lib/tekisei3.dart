import 'package:flutter/material.dart';
import 'package:educate_app/tekisei4.dart';
//import 'package:tekisei3/majore.dart';

class TekiseiThird extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TekiseiThree(title: 'Flutter Demo Home Page'),
    );
  }
}

class TekiseiThree extends StatefulWidget {
  TekiseiThree({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TekiseiThree createState() => _TekiseiThree();
}

class _TekiseiThree extends State<TekiseiThree> {
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
              Image.asset('images/idea.png'),
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
              "第３問",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              textAlign: TextAlign.left,
            ),

            // 2行目
            Text(
              "新しいことを思いつくのが得意だ",
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
                MaterialPageRoute(builder: (context) => TekiseiFours()),
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
                MaterialPageRoute(builder: (context) => TekiseiFours()),
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
