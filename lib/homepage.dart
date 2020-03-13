import 'package:collegeapp/pages/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'Clubpage.dart';
import 'callclubs.dart';
import 'homepagedisplay.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
  }

  // ignore: non_constant_identifier_names
  int _SelectedItem = 0;
  void _onTapped(int index){
    setState(() {
      _SelectedItem = index;
    });
  }
  List<Color> _colors = [
    Colors.black,
    Colors.teal,
    Colors.white,
    Colors.green
  ];
  // ignore: non_constant_identifier_names
  List <Widget> _WidgetOptions = [
    DisplayHome(),
    Text(
      'FeedPage',
    ),
    Home(),
    MyApp(),
  ];

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: _colors.elementAt(_SelectedItem),
        body: _WidgetOptions[_SelectedItem],
        bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme: IconThemeData.fallback(),
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.amber[700],
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.burst_mode),
                title: Text('Photos'),
//                backgroundColor: Colors.lightBlue
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.pages),
                title: Text('Feed'),
//                backgroundColor: Colors.lightBlueAccent
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Account'),
//              backgroundColor: Colors.teal,
            ),
          ],
          currentIndex: _SelectedItem,
          onTap: _onTapped,
          elevation: 100,
          unselectedItemColor: Colors.grey[700],
          selectedItemColor: Colors.black,
          selectedFontSize: 15,
          iconSize: 20,
          showUnselectedLabels: true,
        ),
      );
  }
}
