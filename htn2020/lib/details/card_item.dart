import 'package:flutter/material.dart';
import 'package:htn2020/models/gift_card.dart';
import 'listing_theme.dart';

class CardItem extends StatelessWidget{

  List<GiftCard> myCardList = [];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Zomato Cards"),
        backgroundColor: Colors.redAccent,
      ),
      body: getListView(),
    );
  }
      
  CardItem(List<GiftCard> myCardList){
      this.myCardList = myCardList;
  }

  List<Widget> myWidgets = new List<Widget>();

   for (var i = 0; i < myCardList.length, i++) {
      GiftCard object = myCardList[i];
       Widget myWidget = setUpWideget(object);
       myWidgets.add(myWidget);
  }

  Widget getListView() {
    var listView = ListView(
      children: myWidgets,
    );
    return listView;
  }

  Widget setUpWideget(GiftCard object){

  }



}