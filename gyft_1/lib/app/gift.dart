import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyft_1/app/success.dart';

class Gift extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: GiftPage(),
    );
  }
}

class GiftPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background/9-Gift.jpg"), fit: BoxFit.cover,),
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
                SizedBox(height: 333),
                Transform.scale(
                  scale: 0.5,
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 70.0),
                    alignment: Alignment.topRight,
                    child: new Column(
                      children: [
                        new CupertinoButton(
                          color: Color(0xFF48A7FF),
                          borderRadius: BorderRadius.circular(20.0),
                          padding: new EdgeInsets.all(15.0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Success()),
                            );
                          },
                          child: Text(
                            'Gift',
                            style: TextStyle(
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                        SizedBox(height: 28),
                        new CupertinoButton(
                          color: Color(0xFF48A7FF),
                          borderRadius: BorderRadius.circular(20.0),
                          padding: new EdgeInsets.all(15.0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Success()),
                            );
                          },
                          child: Text(
                            'Gift',
                            style: TextStyle(
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                        SizedBox(height: 28),
                        new CupertinoButton(
                          color: Color(0xFF48A7FF),
                          borderRadius: BorderRadius.circular(20.0),
                          padding: new EdgeInsets.all(15.0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Success()),
                            );
                          },
                          child: Text(
                            'Gift',
                            style: TextStyle(
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                        SizedBox(height: 28),
                        new CupertinoButton(
                          color: Color(0xFF48A7FF),
                          borderRadius: BorderRadius.circular(20.0),
                          padding: new EdgeInsets.all(15.0),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Success()),
                            );
                          },
                          child: Text(
                            'Gift',
                            style: TextStyle(
                                fontFamily: 'Montserrat'),
                          ),
                        ),
                      ],
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
