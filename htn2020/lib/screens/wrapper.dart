import 'package:flutter/material.dart';
import 'package:htn2020/models/gift_card.dart';
import 'package:htn2020/screens/authenticate/authenticate.dart';
import 'package:htn2020/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:htn2020/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    /* 
    TODO: Query database for collection of dictionaries
    For each restaurant, create a gift card object with images, names,
    etc. mapped 1:1
    */
    final user = Provider.of<User>(context);
    GiftCard giftCard_1 = new GiftCard("Canape Restaurant", "https://4.bp.blogspot.com/-L9CtV6gR8GI/WtgKA619aEI/AAAAAAAAF9c/CubtyZE94o076qCShJN_D2bdNiHoeIRxACEwYBhgL/s1600/cool%2Bprofile%2Bimages.png",
     "Campus Drive", "000-000-0000");
     GiftCard giftCard_2 = new GiftCard("Canape Restaurant", "https://4.bp.blogspot.com/-L9CtV6gR8GI/WtgKA619aEI/AAAAAAAAF9c/CubtyZE94o076qCShJN_D2bdNiHoeIRxACEwYBhgL/s1600/cool%2Bprofile%2Bimages.png",
     "Campus Drive", "000-000-0000");
    List<GiftCard> myGiftCardList = [giftCard_1, giftCard_2];
    //return either home or authenticate 
    if (user == null){
      return Authenticate();
    } else {
      return Home(myGiftCardList);
    }
  }
}

