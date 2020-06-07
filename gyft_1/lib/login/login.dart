import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyft_1/app/front_page.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background/6-Login.jpg"), fit: BoxFit.cover,),
            ),
          ),
          new Container(
              alignment: Alignment.center,
              child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 90),
                    new CupertinoButton(
                      color: Color(0xFF48A7FF),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Front()),
                        );
                      },
                      child: Text(
                        'Log In',
                        style: TextStyle(
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