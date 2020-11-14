import 'package:flutter/material.dart';
import 'package:educate_app/main.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[300],
        leading: Icon(Icons.videocam),
        title: const Text(
          'Home',
          textAlign: TextAlign.start,
        ),
        actions: <Widget>[
          SizedBox(
            width: 40,
            child: FlatButton(
              child: Icon(Icons.search),
              onPressed: () {
                //to do anything
              },
            ),
          ),
          SizedBox(
            width: 44,
            child: FlatButton(
              child: Icon(Icons.more_vert),
              onPressed: () {
                //to do anything
              },
            ),
          ),
        ],
      ),
      body: Container(
        //color: Colors.cyan50,
        color: Colors.cyan[50],
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white30,
              child: Row(
                children: <Widget>[
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: Image.network(
                      'https://everydayicons.jp/wp/wp-content/themes/everydayicons/icons/thumbs/ei-child_face.png',
                      height: 60.0,
                      width: 60.0,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Container(
                    child: Text(
                      'ホーム画面',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 20,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 160.0,
                    height: 10,
                    color: Colors.red,
                    child: FlatButton(
                      child: Text(
                        'Home',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      },
                    ),
                  ),
                  Container(
                    width: 160.0,
                    height: 3,
                    color: Colors.green,
                    child: FlatButton(
                      child: Text(
                        '投稿一覧',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      },
                    ),
                  ),
                  Container(
                    width: 160.0,
                    height: 3,
                    color: Colors.blue,
                    child: ElevatedButton(
                      child: Text(
                        'ノート投稿',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    height: 3,
                    color: Colors.yellow,
                    child: Text(
                      'コミュニティ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    height: 3,
                    color: Colors.orange,
                    child: Text(
                      '教員ページ',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    width: 160.0,
                    height: 3,
                    color: Colors.deepPurpleAccent,
                    child: Text(
                      '概要',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
              },
              child: Container(
                child: Card(
                  color: Colors.cyanAccent,
                  margin: const EdgeInsets.only(
                      left: 20.0, top: 10.0, right: 20.0, bottom: 10.0),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 300,
                    height: 70,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'ノート投稿',
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Card(
                    color: Colors.cyanAccent,
                    margin: const EdgeInsets.only(
                        left: 20.0, top: 10.0, right: 20.0, bottom: 10.0),
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 140,
                      height: 70,
                      child: Text(
                        'Card',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.cyanAccent,
                    margin: const EdgeInsets.only(
                        left: 20.0, top: 10.0, right: 20.0, bottom: 10.0),
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 140,
                      height: 70,
                      child: Text(
                        'Card',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Card(
                    color: Colors.cyanAccent,
                    margin: const EdgeInsets.only(
                        left: 20.0, top: 10.0, right: 20.0, bottom: 10.0),
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 140,
                      height: 70,
                      child: Text(
                        'Card',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.cyanAccent,
                    margin: const EdgeInsets.only(
                        left: 20.0, top: 10.0, right: 20.0, bottom: 10.0),
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 140,
                      height: 70,
                      child: Text(
                        'Card',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Card(
                    color: Colors.cyanAccent,
                    margin: const EdgeInsets.only(
                        left: 20.0, top: 10.0, right: 20.0, bottom: 10.0),
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 140,
                      height: 70,
                      child: Text(
                        'Card',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.cyanAccent,
                    margin: const EdgeInsets.only(
                        left: 20.0, top: 10.0, right: 20.0, bottom: 10.0),
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      width: 140,
                      height: 70,
                      child: Text(
                        'Card',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
