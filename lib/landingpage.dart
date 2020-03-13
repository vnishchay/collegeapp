import 'package:collegeapp/homepage.dart';
import 'package:collegeapp/signinpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  FirebaseUser _user;
  void _updateUser(FirebaseUser user){
    setState(() {
      _user = user;
      print(_user.uid);
    });
  }
  @override
  Widget build(BuildContext context) {
    if(_user==null){
      return SignIn(
        onSignIn: (user) => _updateUser(user),
      );
    }
    else
      return HomePage();
  }
}
