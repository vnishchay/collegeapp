import 'package:flutter/material.dart';
import '../user.dart';
var user = User();

class EditPage extends StatefulWidget {
  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: (){
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text('Edit'),
        actions: <Widget>[
          IconButton(
            onPressed: (){
              final form = _formKey.currentState;
              if(form.validate()){
                form.save();
                user.save();
                _showDialog(context);
              }
            },
            icon: Icon(Icons.check),
          )
        ],
      ),
      body: Container(
        child: Builder(
          builder: (context) => Form(
            key: _formKey,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return 'please enter username';
                    }
                    return null;
                  },
                  onSaved: (val){
                    setState(() {
                      user.userName = val;
                    });
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'UnderGraduate',
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return 'please enter your UG year';
                    }
                    else
                    return null;
                  },
                  onSaved: (val){
                    setState(() {
                      user.ug = val;
                    });
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Branch',
                  ),
                  validator: (value){
                    if(value.isEmpty){
                      return 'please enter your branch';
                    }
                    return null;
                  },
                  onSaved: (val){
                    setState(() {
                      user.branch = val;
                    });
                  },
                ),
              ],
            )
          ),
        ),
      )
    );
  }
}

_showDialog(BuildContext context){
  Scaffold.of(context)
      .showSnackBar(SnackBar(content: Text('Profile Updated')));
}