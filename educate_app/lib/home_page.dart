import 'package:educate_app/fuculty_list_page.dart';
import 'package:flutter/material.dart';
import 'package:educate_app/main.dart';
import 'package:educate_app/picture_show_page.dart';
import 'package:educate_app/fuculty_list_page.dart';
import 'package:educate_app/register_page.dart';
import 'package:educate_app/tekisei1.dart';

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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PictureShow()));
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegisterNotePage()));
                      },
                    ),
                  ),
                  Container(
                    width: 160.0,
                    height: 3,
                    color: Colors.yellow,
                    child: ElevatedButton(
                      child: Text(
                        '学部適性検査',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TekiseiFirst()));
                      },
                    ),
                  ),
                  Container(
                    width: 160.0,
                    height: 3,
                    color: Colors.orange,
                    child: ElevatedButton(
                      child: Text(
                        '学部イベント',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FucultyListPage()));
                      },
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PictureShow()));
              },
              child: Container(
                child: Card(
                  color: Colors.cyanAccent,
                  margin: const EdgeInsets.only(
                      left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 300,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'ノート一覧',
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TekiseiFirst()));
              },
              child: Container(
                child: Card(
                  color: Colors.cyanAccent,
                  margin: const EdgeInsets.only(
                      left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 300,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '学部適性検査',
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FucultyListPage()));
              },
              child: Container(
                child: Card(
                  color: Colors.cyanAccent,
                  margin: const EdgeInsets.only(
                      left: 20.0, top: 20.0, right: 20.0, bottom: 20.0),
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    width: 300,
                    height: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '学部イベント情報',
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
