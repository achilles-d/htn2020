import 'package:flutter/material.dart';
import 'package:htn2020/services/auth.dart';

class Register extends StatefulWidget {

  final Function toggleView;
  Register({ this.toggleView });

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>(); 

  //Text field state 
  String email = '';
  String password = '';
  String zipCode = '';
  String errMsg = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor : Colors.blue[100],
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        title: Text('Register for Gyft'),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Login'),
            onPressed: () {
              widget.toggleView();
            }
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        child: Form(
          key: _formKey,  //associate key with form key 
          child: Column(
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username'
                ),
                validator: (val) => val.isEmpty ? 'Enter a valid email address. If it is valid, it has already been registered' : null,
                onChanged: (val){
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Password'
                ),
                obscureText: true,
                validator: (val) => val.length < 6 ? 'Enter a password at least 6 characters long' : null,
                onChanged: (val) {
                  setState(() => password = val);
                }
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'ZIP code'
                ),
                obscureText: true,
                validator: (val) => (val.length < 6) && (val.length > 6) ? 'Enter a valid ZIP code' : null,
                onChanged: (val) {
                  setState(() => zipCode = val);
                }
              ),
              SizedBox(height: 20.0),
              RaisedButton(
                color: Colors.pink[400],
                child: Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async { 
                //Takes time, so make it an asynchronous task
                if (_formKey.currentState.validate()) {
                  //Only evaluates to true if all val == null
                  dynamic result = await _auth.registerWithEmailAndPwd(email, password);
                  if(result == null){
                    setState(() => errMsg = 'Enter a valid email address');
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