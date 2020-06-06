import 'package:firebase_auth/firebase_auth.dart';
import 'package:htn2020/models/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance; 

  //Create a use object based on FireBaseUser
  User _userFromFirebaseUser(FirebaseUser user){
    return user != null ? User(uid: user.uid) : null; 
  }

  //Auth change user stream
  Stream<User> get user{
    //Grab user from Firebase
    return _auth.onAuthStateChanged
      .map(_userFromFirebaseUser);
      //.map((FirebaseUser user) => _userFromFirebaseUser(user));
  }

  //Sign in anonymously
  Future signInAnon() async {
    try{
      AuthResult signInResult = await _auth.signInAnonymously(); 
      FirebaseUser user = signInResult.user; 
      return _userFromFirebaseUser(user);
    } catch (err) {
      print(err.toString());
      return null; 
    }
  }

  //Sign in using email and pwd

  //Register with email & password 

  //Sign out 

}