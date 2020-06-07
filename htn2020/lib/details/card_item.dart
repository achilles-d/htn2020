import 'package:flutter/material.dart';
import 'package:htn2020/details/listing_screen.dart';
import 'package:htn2020/models/gift_card.dart';

class CardItem extends StatelessWidget{

  List<GiftCard> myCardList = [];

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Gift Cards Available"),
        backgroundColor: Colors.blueAccent,
      ),
      body: getListView(),
    );
  }
      
  CardItem(List<GiftCard> myCardList){
      this.myCardList = myCardList;
  }

  Widget getListView() {
    var listView = ListView.builder(
      itemCount: this.myCardList.length,
      itemBuilder: (context, index){
        GiftCard tempGiftCard = this.myCardList[index];
          return ListTile(
              title: Text(tempGiftCard.getName()),
              onTap: (){
                Navigator.push(
                      context,
                       MaterialPageRoute(builder: (context) => CardScreen()),
                );
              },
              trailing: Icon(Icons.arrow_right),
          );
      }
    );
    return listView;
  }
}