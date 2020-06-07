import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyft_1/createNewAccount/new_user.dart';
import 'package:gyft_1/login/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: StartPage(),
    );
  }
}

class StartPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background/1-Front.jpg"), fit: BoxFit.cover,),
            ),
          ),
          new Container(
            alignment: Alignment.center,
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new CupertinoButton(
                  color: Color(0xFF48A7FF),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NewUser()),
                    );
                  },
                  child: Text(
                    'Create New Account',
                    style: TextStyle(
                      fontFamily: 'Montserrat'),
                  ),
                ),
                new CupertinoButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Text(
                      'Log In',
                      style: TextStyle(
                        color: Color(0xFF000000),
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ]
            )
          )
        ],
      ),
    );
  }
}