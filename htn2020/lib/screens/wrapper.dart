import 'package:flutter/material.dart';
import 'package:htn2020/screens/authenticate/authenticate.dart';
import 'package:htn2020/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:htn2020/models/user.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);
    
    //return either home or authenticate 
    return Authenticate();
  }
}

