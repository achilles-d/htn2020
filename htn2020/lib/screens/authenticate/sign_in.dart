import 'package:flutter/material.dart';
import 'package:htn2020/services/auth.dart';

class SignIn extends StatefulWidget {

  final Function toggleView;
  SignIn({ this.toggleView });

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn > {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>(); 

  //Text field state 
  String email = '';
  String password = '';
  String errMsg = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        title: Text('Sign in to Gyft'),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Register'),
            onPressed: () {
              widget.toggleView();
            }
          )
        ]
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey, 
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                validator: (val) => val.isEmpty ? 'Enter a valid email address' : null,
                onChanged: (val){
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                obscureText: true,
                validator: (val) => val.length < 6 ? 'Enter a password at least 6 characters long' : null,
                onChanged: (val) {
                  setState(() => password = val);
                }
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                color: Colors.pink[400],
                child: Text(
                  'Sign in',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async { 
                if (_formKey.currentState.validate()) {
                  dynamic result = await _auth.signInWithEmailAndPwd(email, password);
                  //Only evaluates to true if all val == null
                  if(result == null){
                    setState(() => errMsg = 'Invalid login');
                  }
                }
                },
              ),
              SizedBox(height: 12.0),
              Text(
                errMsg,
                style: TextStyle(color: Colors.red, fontSize: 14.0)
              ),
            ],
          ),
        ),
      ),
    );
  }
}