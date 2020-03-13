import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: MyApp(),
    )
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var submit = true;
  final List<ListTile> _qns;
  @override
  Widget build(BuildContext context) {
    if(submit == true) {
      return Scaffold(
          appBar: AppBar(
            title: TextField(
              cursorColor: Colors.white,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Search',
                  icon: Icon(Icons.search)
              ),
            ),
          ),
          drawer: Drawer(
            child: ListView(
            ),
          ),
          body: Padding(
            padding: EdgeInsets.all(7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5),
                  child: Text(
                    'Create Question', style: TextStyle(fontSize: 30),),
                ),
                TextFormField(
                  onChanged: (text) {

                  },
                  decoration: InputDecoration(
                      labelText: 'Enter question here'
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(300, 5, 10, 0),
                  child: RaisedButton(
                    onPressed: () {
                      setState(() {
                        submit = false;
                      });
                    },
                    child: Text('SUBMIT'),
                  ),
                )
              ],
            ),
          )
      );
    }
    else{
      return Scaffold(
        appBar: AppBar(
          title: Text('Add Question'),
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: _qns,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              submit = true;
            });
          },
          child: Icon(Icons.add),
        ),
      );
    }
  }
}

class CustomTile extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: ,
    );
  }
}
