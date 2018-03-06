import 'package:flutter/material.dart';
import 'package:app01/settings.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String _title = 'Please login';
  void _gohome() {
    print('go home');
  }
  void _logout() {
    print('logout');
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Login',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text(_title),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.home), onPressed: (){_gohome();}),
            new IconButton(icon: new Icon(Icons.exit_to_app), onPressed: (){_logout();}),
          ],
        ),
        body: new Settings(),
      ),
    );
  }

}

