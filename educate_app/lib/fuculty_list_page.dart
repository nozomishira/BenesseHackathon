import 'package:flutter/material.dart';
import 'package:educate_app/home_page.dart';
import 'package:educate_app/information_engeneering_page.dart';

class FucultyListPage extends StatefulWidget {
  @override
  _FucultyListPageState createState() => _FucultyListPageState();
}

class _FucultyListPageState extends State<FucultyListPage> {
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
                      '気になる学部',
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
                  FlatButton(
                    color: Colors.lightGreenAccent[100],
                    child: ListTile(
                      leading: Icon(Icons.engineering),
                      title: Text('工学部'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InformationEngineeringPage()));
                    },
                  ),
                  FlatButton(
                    color: Colors.lightGreenAccent[100],
                    child: ListTile(
                      leading: Icon(Icons.science),
                      title: Text('理学部'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InformationEngineeringPage()));
                    },
                  ),
                  FlatButton(
                    color: Colors.lightGreenAccent[100],
                    child: ListTile(
                      leading: Icon(Icons.agriculture),
                      title: Text('農学部'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InformationEngineeringPage()));
                    },
                  ),
                  FlatButton(
                    color: Colors.lightGreenAccent[100],
                    child: ListTile(
                      leading: Icon(Icons.perm_device_information),
                      title: Text('情報科学部'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InformationEngineeringPage()));
                    },
                  ),
                  FlatButton(
                    color: Colors.lightGreenAccent[100],
                    child: ListTile(
                      leading: Icon(Icons.medical_services),
                      title: Text('医学部'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InformationEngineeringPage()));
                    },
                  ),
                  FlatButton(
                    color: Colors.lightGreenAccent[100],
                    child: ListTile(
                      leading: Icon(Icons.medical_services),
                      title: Text('歯学部'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InformationEngineeringPage()));
                    },
                  ),
                  FlatButton(
                    color: Colors.lightGreenAccent[100],
                    child: ListTile(
                      leading: Icon(Icons.medical_services),
                      title: Text('薬学部'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InformationEngineeringPage()));
                    },
                  ),
                  FlatButton(
                    color: Colors.pink[100],
                    child: ListTile(
                      leading: Icon(Icons.book),
                      title: Text('教育学部'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InformationEngineeringPage()));
                    },
                  ),
                  FlatButton(
                    color: Colors.pink[100],
                    child: ListTile(
                      leading: Icon(Icons.history),
                      title: Text('人文学部'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InformationEngineeringPage()));
                    },
                  ),
                  FlatButton(
                    color: Colors.pink[100],
                    child: ListTile(
                      leading: Icon(Icons.money),
                      title: Text('経済学部'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InformationEngineeringPage()));
                    },
                  ),
                  FlatButton(
                    color: Colors.pink[100],
                    child: ListTile(
                      leading: Icon(Icons.layers),
                      title: Text('法学部'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InformationEngineeringPage()));
                    },
                  ),
                  FlatButton(
                    color: Colors.pink[100],
                    child: ListTile(
                      leading: Icon(Icons.language),
                      title: Text('外国語学部'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InformationEngineeringPage()));
                    },
                  ),
                  FlatButton(
                    color: Colors.pink[100],
                    child: ListTile(
                      leading: Icon(Icons.language_outlined),
                      title: Text('国際教養学部'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InformationEngineeringPage()));
                    },
                  ),
                  FlatButton(
                    color: Colors.pink[100],
                    child: ListTile(
                      leading: Icon(Icons.policy),
                      title: Text('社会学部'),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  InformationEngineeringPage()));
                    },
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
