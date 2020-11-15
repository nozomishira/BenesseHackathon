import 'package:flutter/material.dart';
import 'package:educate_app/home_page.dart';
import 'package:educate_app/picture_show_page.dart';
import 'package:educate_app/fuculty_list_page.dart';
import 'package:educate_app/picture_show_page.dart';

class InformationEngineeringPage extends StatefulWidget {
  @override
  _InformationEngineeringPageState createState() =>
      _InformationEngineeringPageState();
}

class _InformationEngineeringPageState
    extends State<InformationEngineeringPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                      '工学部情報＆イベント',
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
                    child: ElevatedButton(
                      child: Text(
                        '投稿一覧',
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
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => RegisterNotePage()));
                      },
                    ),
                  ),
                  Container(
                    width: 160.0,
                    height: 3,
                    color: Colors.yellow,
                    child: Text(
                      '学部適性検査',
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
                    elevation: 4.0,
                    margin: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Image.network('https://picsum.photos/250?image=9'),
                        _titleArea(),
                        _descriptionArea(),
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

Widget _titleArea() {
  return Container(
      margin: EdgeInsets.all(16.0),
      child: Row(
        // 1行目
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                // 3.1.1行目
                margin: const EdgeInsets.only(bottom: 4.0),
                child: Text(
                  "高校生向け工学部入学体験",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ),
              Container(
                // 3.1.2行目
                child: Text(
                  "広島大学",
                  style: TextStyle(fontSize: 12.0, color: Colors.grey),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 40,
          ),
          Icon(
            //
            Icons.star,
            color: Colors.red,
          ),
          Text('41'), // 2.3列目
        ],
      ));
}

Widget _descriptionArea() {
  return Container(
    margin: const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
    child: Column(
      children: <Widget>[
        Text('''
          機械工学コースは、機械系主要分野である材料工学、設計工学、生産加工学、熱・流体エネルギー工学、計測制御工学を網羅した研究領域を柱として、材料加工分野、エネルギー分野、計測制御分野の3分野に大別し、学部での学習を踏まえた、より高度な専門知識を習得できるようカリキュラム構成されています。 学生は選択した分野での専門領域において高度な研究活動を行います。さらに、専門領域を基軸にして、高度情報化社会に適切に対応できるよう、機械工学コースの専門科目やコース横断科目を選択履修することで、幅広く、ものづくりにおける高度な先端技術に関する専門知識を修得させます。自らの専門領域を確立した研究者や高度専門職業人としての技術者育成を目指します。
          '''),
        Text('申し込み:https://www.hiroshima-u.ac.jp/'),
      ],
    ),
  );
}
