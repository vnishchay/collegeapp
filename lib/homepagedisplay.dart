import 'package:flutter/material.dart';
class DisplayHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('MyApp'),
        actions: <Widget>[
          IconButton(
            onPressed:(){
              Navigator.pushNamed(context, '/Mail');
            },
            icon: Icon(Icons.mail_outline),
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
