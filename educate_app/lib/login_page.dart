class Login extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Login();
  }
}

class _Login extends State<Login> {
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
                      MaterialPageRoute(builder: (context) => MyHomepage()),
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
