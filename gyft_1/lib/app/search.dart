import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyft_1/app/gift.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: SearchPage(),
    );
  }
}

class SearchPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background/8-Search.jpg"), fit: BoxFit.cover,),
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
                    SizedBox(height: 70),
                    Container(
                      margin: const EdgeInsets.only(right: 20.0),
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
                                MaterialPageRoute(builder: (context) => Gift()),
                              );
                            },
                            child: Text(
                              'Gift',
                              style: TextStyle(
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                          SizedBox(height: 43),
                          new CupertinoButton(
                            color: Color(0xFF48A7FF),
                            borderRadius: BorderRadius.circular(20.0),
                            padding: new EdgeInsets.all(15.0),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Gift()),
                              );
                            },
                            child: Text(
                              'Gift',
                              style: TextStyle(
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                          SizedBox(height: 43),
                          new CupertinoButton(
                            color: Color(0xFF48A7FF),
                            borderRadius: BorderRadius.circular(20.0),
                            padding: new EdgeInsets.all(15.0),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Gift()),
                              );
                            },
                            child: Text(
                              'Gift',
                              style: TextStyle(
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                          SizedBox(height: 43),
                          new CupertinoButton(
                            color: Color(0xFF48A7FF),
                            borderRadius: BorderRadius.circular(20.0),
                            padding: new EdgeInsets.all(15.0),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Gift()),
                              );
                            },
                            child: Text(
                              'Gift',
                              style: TextStyle(
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                          SizedBox(height: 43),
                          new CupertinoButton(
                            color: Color(0xFF48A7FF),
                            borderRadius: BorderRadius.circular(20.0),
                            padding: new EdgeInsets.all(15.0),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Gift()),
                              );
                            },
                            child: Text(
                              'Gift',
                              style: TextStyle(
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                          SizedBox(height: 43),
                          new CupertinoButton(
                            color: Color(0xFF48A7FF),
                            borderRadius: BorderRadius.circular(20.0),
                            padding: new EdgeInsets.all(15.0),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Gift()),
                              );
                            },
                            child: Text(
                              'Gift',
                              style: TextStyle(
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                          SizedBox(height: 43),
                          new CupertinoButton(
                            color: Color(0xFF48A7FF),
                            borderRadius: BorderRadius.circular(20.0),
                            padding: new EdgeInsets.all(15.0),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Gift()),
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
        title: Text("In progress! Back button requires unstacking of MaterialApp."),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
