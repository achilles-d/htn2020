import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ this.uid });

  // collection reference 
  final CollectionReference consumerInfo = Firestore.instance.collection('Consumers');

  Future updateUserData(String name, String zipCode) async {
    return await consumerInfo.document(uid).setData({
      'name': name,
      'ZIP code': zipCode, 
    });
  }

}