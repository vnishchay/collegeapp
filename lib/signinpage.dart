import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

class SignIn extends StatelessWidget {
  SignIn({@required this.onSignIn});
  final Function(FirebaseUser) onSignIn;
  Future<void> _signInAnonimously()  async {
  try {
  final result = await FirebaseAuth.instance.signInAnonymously();
  onSignIn(result.user);
  }catch(e){
  print(e.toString());
  }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.blue,
        body: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
//              shape: BoxShape.circle,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(0), bottomRight: Radius.circular(500), topRight: Radius.circular(0)),
                  color: Colors.purpleAccent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius:10.0,
                    )]
              ),
            ),
            Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(500)),
                  color: Colors.limeAccent,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius:10.0,
                    )
                  ]
              ),
            ),
            Container(
              child: Center(
                child: Container(
                  width: 325,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius:10.0,
                        )
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 50.0,
                        child: Icon(Icons.account_circle,
                          size: 70.0,
                        ),
                      ),
                      Container(
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'UserName',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20.0,
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                              Container(
                                width: 250,
                                child: TextField(
                                  cursorColor: Colors.limeAccent,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        'Password',
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ],
                                  )
                              ),
                              Container(
                                width: 250,
                                child: TextField(
                                  cursorColor: Colors.limeAccent,
                                ),
                              ),
                            ],
                          )
                      ),
                      InkWell(
                        onTap: _signInAnonimously,
                        child: Container(
                          width: 150,
                          height: 50,
                          child: Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                              color: Colors.green
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}
