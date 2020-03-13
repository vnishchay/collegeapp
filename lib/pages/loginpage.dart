import 'package:flutter/material.dart';

import './Editprofilepage.dart';

import '../user.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.red,
      body: Stack(
        alignment: Alignment(0, -0.5),
        children: <Widget>[
          Container(
            width: 450,
            height: 500,
            margin: EdgeInsets.fromLTRB(0, 225, 0, 0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black,
                      blurRadius: 50
                  )
                ]
            ),
            child: ListView(
              children: <Widget>[
                CustomCard(title: user.userName,),
                CustomCard(title: user.ug,),
                CustomCard(title: user.branch,),
                CustomCard(title: 'S20190010123',)
              ],
            ),
          ),
          Container(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                  color:Colors.black,
                  blurRadius: 10
                )
              ]
            ),
            child: Icon(Icons.person, color: Colors.white, size: 130),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          setState(() {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => EditPage(),
            ));
          });
        },
        child: Icon(Icons.edit),
        backgroundColor: Colors.orange,
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  CustomCard({this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
      child: Card(
          elevation: 10,
          color: Colors.white,
          child: Container(
            height: 60,
            child: Text(
                '$title',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500
              ),
            ),
          ),
      ),
    );
  }
}
