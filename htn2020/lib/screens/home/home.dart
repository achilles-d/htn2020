import 'package:flutter/material.dart';
import 'package:htn2020/services/auth.dart';

class Home extends StatelessWidget { 

  final AuthService _auth = AuthService();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('Gyft'),
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () async {
              await _auth.signOut();
            }, 
            icon: Icon(Icons.person), 
            label: Text('logout')
          )
        ],
      )
    );
  }
}