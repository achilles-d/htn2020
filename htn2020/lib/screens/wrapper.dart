import 'package:flutter/material.dart';
import 'package:htn2020/screens/authenticate/authenticate.dart';
import 'package:htn2020/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //return either home or authenticate 
    return Authenticate();
  }
}

