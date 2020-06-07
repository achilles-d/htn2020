import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyft_1/app/front_page.dart';

class SignUpComplete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: SignUpCompletePage(),
    );
  }
}

class SignUpCompletePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background/5-SignUpComplete.jpg"), fit: BoxFit.cover,),
            ),
          ),
          new Container(
              margin: const EdgeInsets.only(top: 10.0),
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
                          MaterialPageRoute(builder: (context) => Front()),
                        );
                      },
                      child: Text(
                        'Go to Front Page',
                        style: TextStyle(fontFamily: 'Montserrat'),
                      ),
                    ),
                  ],
              ),
          ),
        ],
      ),
    );
  }
}