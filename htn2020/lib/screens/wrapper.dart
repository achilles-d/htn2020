import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:htn2020/models/gift_card.dart';
import 'package:htn2020/screens/authenticate/authenticate.dart';
import 'package:htn2020/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:htn2020/models/user.dart';
import 'package:htn2020/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:htn2020/services/database.dart';

class Wrapper extends StatelessWidget {
  
  final List<GiftCard> cards = new List<GiftCard>();

  @override
  Widget build(BuildContext context) {
    
    final user = Provider.of<User>(context);
    
    getBusinesses();
    
    //return either home or authenticate 
    if (user == null){
      return Authenticate();
    } else {
      return Home(cards);
    }
  }

  void getBusinesses() async {
    QuerySnapshot currentBiz  = await Firestore.instance.collection('Businesses').getDocuments();
    List<DocumentSnapshot> bizDocs = currentBiz.documents;
    for(var document in bizDocs){
      cards.add(
        new GiftCard(
                    document["name"], 
                    document["image url"], 
                    document["address"], 
                    document["contact"])
        );
    }
  }
}

