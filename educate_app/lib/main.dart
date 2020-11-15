import 'package:educate_app/home_page.dart';
import 'package:educate_app/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: LoginPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  var _userController = TextEditingController();
  var _passwordController = TextEditingController();
  var _text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit Controller'),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: <Widget>[
            Text('Login'),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Text('Username: '),
                ),
                Expanded(
                  flex: 7,
                  child: TextField(
                    controller: _userController,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Text('Password: '),
                ),
                Expanded(
                  flex: 7,
                  child: TextField(
                    controller: _passwordController,
                    obscureText: true,
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.all(16.0),
              child: RaisedButton(
                  child: Text('ログイン'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  }),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(_text),
            )
          ],
        ),
      ),
    );
  }
}
