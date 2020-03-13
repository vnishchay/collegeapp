
import 'mail.dart';
import 'package:collegeapp/callclubs.dart';
import 'package:collegeapp/landingpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:async';
void main(){
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => LandingPage(),
        '/home' : (context) =>Home(),
        '/IOTA' : (context) =>DisplayIOTAClub(),
        '/PhotoGraphy Club' : (context) => DisplayPhotographyClub(),
        '/Mail' : (context) => Mail(),
      }
    )
  );
}