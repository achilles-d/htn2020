import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyft_1/app/search.dart';

class Front extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: FrontPage(),
    );
  }
}

class FrontPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background/7-FrontPage.jpg"), fit: BoxFit.cover,),
            ),
          ),
          new Container(
              //margin: const EdgeInsets.only(top: 10.0),
              alignment: Alignment.center,
              child: new Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new TextFormField(
                      validator: (val) => val.isEmpty ? 'Enter a business name' : null,
                      onFieldSubmitted: (val) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Search()),
                        );
                      },
                      decoration: InputDecoration(
                        labelText: 'Search for Businesses',
                        fillColor: Colors.white,
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.white, width: 2.0),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 500),
                    Container(
                      child: new TextFormField(
                        validator: (val) => val.isEmpty ? 'Enter a friend name' : null,
                        onFieldSubmitted: (val) {
                          Navigator.push(
                            context,
                              MaterialPageRoute(builder: (context) => Search()),
                          );
                        },
                        decoration: InputDecoration(
                          labelText: 'Search for Friends',
                          fillColor: Colors.white,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Color(0xFFC2C8FF), width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
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