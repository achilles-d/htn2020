import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyft_1/app/gift_card.dart';


class Success extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: SuccessPage(),
    );
  }
}

class SuccessPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background/10-Success.jpg"), fit: BoxFit.cover,),
            ),
          ),
          new Container(
              alignment: Alignment.center,
              child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(height: 400),
                    new CupertinoButton(
                      color: Color(0xFF48A7FF),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => GiftCard()),
                        );
                      },
                      child: Text(
                        'See Gift Card',
                        style: TextStyle(
                            fontFamily: 'Montserrat'),
                      ),
                    ),
                    new CupertinoButton(
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
                  ]
              )
          )
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