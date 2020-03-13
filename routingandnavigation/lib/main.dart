
import 'package:flutter/material.dart';
import 'callclubs.dart';
void main(){
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => Home(),
        '/PhotoGraphy Club' : (context) => DisplayPhotographyClub(),
        '/IOTA' : (context) => DisplayIOTAClub(),
//        '/Art Club': (context) =>DisplayArtClub(),
      },
    )
  );
}