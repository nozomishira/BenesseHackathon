import 'package:educate_app/tekisei1.dart';
import 'package:flutter/material.dart';
import 'package:educate_app/home_page.dart';
import 'package:educate_app/register_page.dart';
import 'package:educate_app/fuculty_list_page.dart';

class PictureShow extends StatefulWidget {
  @override
  _PictureShowState createState() => _PictureShowState();
}

class _PictureShowState extends State<PictureShow> {
  final items = List<String>.generate(10, (i) => "Item $i");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[300],
        leading: Icon(Icons.videocam),
        title: const Text(
          'Note一覧',
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
                      'みんなのノート',
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
                    child: Text(
                      '投稿一覧',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
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
                    child: FlatButton(
                      child: Text(
                        '学部適性検査',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
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
                        '学部イベント情報',
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
            Expanded(
              child: ListView(
                children: <Widget>[
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.network(
                            'https://uepweb.net/blog/wp-content/uploads/2018/02/S__22560789-1024x737.jpg'),
                        Text(
                          '英語　長文読解',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.network(
                            'https://www.z-netschool.jp/school/tokyo/akabane/wp-content/uploads/sites/23/2019/04/IMG_2202.jpg'),
                        Text(
                          '英語　文法',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.network(
                            'https://www.z-netschool.jp/school/tokyo/akabane/wp-content/uploads/sites/23/2019/04/IMG_2202.jpg'),
                        Text(
                          '英語演習　文法',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.network(
                            'https://images.unsplash.com/photo-1484480974693-6ca0a78fb36b?ixlib=rb-1.2.1&auto=format&fit=crop&w=1052&q=80'),
                        Text(
                          '英語　単語学習',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: <Widget>[
                        Image.network(
                            'https://kyoiku.sho.jp/wp-content/uploads/2020/06/IMG_9459.jpg'),
                        Text(
                          '理科　生物学実験レポート',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        )
                      ],
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
