import 'package:flutter/material.dart';
import 'package:htn2020/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn > {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        title: Text('Sign in to Gyft'),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: RaisedButton(
          child: Text('Sign in anonymously'),
          onPressed: () async {
            dynamic signInResult = await _auth.signInAnon();
            if (signInResult == null) {
              print('An error occurred during sign in');
            } else {
              print('Sign in successful');
              print(signInResult.uid);
            }
          }
        )
      )
    
    );
  }
}