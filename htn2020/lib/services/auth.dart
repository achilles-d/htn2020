import 'package:firebase_auth/firebase_auth.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance; 

  //Sign in anonymously
  Future signInAnon() async {
    try{
      AuthResult signInResult = await _auth.signInAnonymously(); 
      FirebaseUser user = signInResult.user; 
      return user; 
    } catch (err) {
      print(err.toString());
      return null; 
    }
  }

  //Sign in using email and pwd

  //Register with email & password 

  //Sign out 

}