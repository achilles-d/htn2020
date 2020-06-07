import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gyft_1/createNewAccount/new_customer.dart';
import 'package:gyft_1/createNewAccount/new_business.dart';

class NewUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: NewUserPage(),
    );
  }
}

class NewUserPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: new Stack(
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage("assets/background/2-NewUser.jpg"), fit: BoxFit.cover,),
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
                          MaterialPageRoute(builder: (context) => NewBusiness()),
                        );
                      },
                      child: Text(
                        'Business Owner',
                        style: TextStyle(fontFamily: 'Montserrat'),
                      ),
                    ),
                    SizedBox(height: 40),
                    new CupertinoButton(
                      color: Color(0xFF48A7FF),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NewCustomer()),
                        );
                      },
                      child: Text(
                          'Consumer',
                          style: TextStyle(fontFamily: 'Montserrat'),
                      ),
                    ),
                    SizedBox(height: 100),
                  ]
              )
          )
        ],
      ),
    );
  }
}