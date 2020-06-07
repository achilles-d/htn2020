import 'package:flutter/material.dart';
import 'package:htn2020/details/card_item.dart';
import 'package:htn2020/models/gift_card.dart';
import 'package:htn2020/services/auth.dart';

class Home extends StatelessWidget { 

  List<GiftCard> myCardList;

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
      ),
      body: new CardItem(this.myCardList))
  }

   Home(List<GiftCard> myCardList){
      this.myCardList = myCardList;
  }
}