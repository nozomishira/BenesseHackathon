import 'package:educate_app/fuculty_list_page.dart';
import 'package:flutter/material.dart';

class TekiseiMajors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("適性の高い学部"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 50,
              // ユーザー登録ボタン
              child: RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text('理工学部', style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FucultyListPage()),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              // ユーザー登録ボタン
              child: RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text('建築工学部', style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FucultyListPage()),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              // ユーザー登録ボタン
              child: RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text('農学部', style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FucultyListPage()),
                  );
                },
              ),
            ),
            Container(
              width: double.infinity,
              height: 50,
              // ユーザー登録ボタン
              child: RaisedButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text('その他の学部', style: TextStyle(fontSize: 20)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FucultyListPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
