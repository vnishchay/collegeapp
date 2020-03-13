import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[700],
            title: Text('WhatsApp'),
            actions: <Widget>[
              Icon(Icons.search),
              Icon(Icons.more_vert)
            ],
            bottom: TabBar(
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(text: 'chats',),
                Tab(text: 'status',),
                Tab(text: 'calls',),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              Chats(),
              Container(
                child: Center(
                  child: Text('Secondpage'),
                ),
              ),
              Container(
                child: Center(
                  child: Text('ThirdPage'),
                ),
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: null,
            child: Icon(Icons.chat),
            backgroundColor: Colors.greenAccent[700],
          ),
        ),
      ),
    );
  }
}

class Chats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Tile(name: 'Alex'),
          Tile(name: 'John'),
          Tile(name: 'Cortona',),
          Tile(name: 'Siri',),
          Tile(name: 'Peter',),
          Tile(name: 'Alien',),
          Tile(name: 'Droop;)',),
          Tile(name: 'Eon',),
          Tile(name: 'Pepper',),
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  Tile({this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(child: Icon(Icons.account_circle,  size:40,color: Colors.grey,), backgroundColor: Colors.white,),
      title: Text(name, style: TextStyle(fontSize: 20),),
      subtitle: Text('message'),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('10/03/2020'),
          Icon(Icons.check)
        ],
      ),
    );
  }
}

