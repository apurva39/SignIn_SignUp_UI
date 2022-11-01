

import 'package:sign_up/login.dart';
import 'package:flutter/material.dart';
import 'package:sign_up/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login':(context)=>MyLogin(),
      'signup':(context)=>MySignUp()
    },
  ));
}


