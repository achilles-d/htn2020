import 'package:flutter/material.dart';
import 'package:htn2020/models/gift_card.dart';

  class CardScreen extends StatelessWidget {
  GiftCard giftCard;

  CardScreen(GiftCard tempGiftCard){
    this.giftCard = tempGiftCard;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Text("Gift Card Details"),
              backgroundColor: Colors.green,
              expandedHeight:350.0,
              flexibleSpace: FlexibleSpaceBar(
                  background: Image.network(this.giftCard.getImageUrl(), fit: BoxFit.cover),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 20,
              delegate: SliverChildListDelegate([
                  Text(this.giftCard.getAddress()),
                  Text(this.giftCard.getContact()),
              ]),
            )
          ],
        ),
      ),
      
    );
  }

}
