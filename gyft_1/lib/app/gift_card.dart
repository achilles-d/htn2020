import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GiftCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: GiftCardPage(),
    );
  }
}

class GiftCardPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background/11-GiftCard.jpg"), fit: BoxFit.cover,),
            ),
          ),
          new Container(
            alignment: Alignment.center,
            child: new Column(
              children: <Widget>[
                SizedBox(height: 50),
                Container(
                  alignment: Alignment.topLeft,
                  child: new CupertinoButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SecondRoute()),
                      );
                    },
                    child: Text(
                      'Back',
                      style: TextStyle(
                          color: Color(0xFF000000),
                          fontFamily: 'Montserrat'),
                    ),
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

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("In progress!"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back! Back button requires unstacking of MaterialApp.'),
        ),
      ),
    );
  }
}