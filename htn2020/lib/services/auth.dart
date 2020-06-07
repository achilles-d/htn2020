import 'package:firebase_auth/firebase_auth.dart';
import 'package:htn2020/models/user.dart';
import 'package:htn2020/services/database.dart';

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
  Future signInWithEmailAndPwd(String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser fbUser = result.user;
      return _userFromFirebaseUser(fbUser);
    } catch(err) {
      print(err.toString());
      return null; 
    }
  }

  //Register with email & password 
  Future registerWithEmailAndPwd(String email, String password, String zipCode, String name) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser fbUser = result.user;

      //Create a new document corresponding to the user's uid 
      await DatabaseService(uid: fbUser.uid).updateUserData(name, zipCode);
      return _userFromFirebaseUser(fbUser);
    } catch(err) {
      print(err.toString());
      return null; 
    }
  }

  //Sign out 
  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch(err){
      print(err.toString());
      return null;
    }
  }

}