import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'login.dart';

void main() => runApp(kGoogle());

class kGoogle extends StatefulWidget {
  @override
  _kGoogleState createState() => _kGoogleState();
}

class _kGoogleState extends State<kGoogle> {
  bool _isLoggedIn = false;

  GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);

  _login() async{
    try{
      await _googleSignIn.signIn();
      setState(() {
        _isLoggedIn = true;
      });
    } catch (err){
      print(err);
    }
  }

  _logout(){
    _googleSignIn.signOut();
    setState(() {
      _isLoggedIn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: _isLoggedIn
                ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(_googleSignIn.currentUser.photoUrl, height: 50.0, width: 50.0,),
                Text('Name: ${_googleSignIn.currentUser.displayName}'),
                Text('Email: ${_googleSignIn.currentUser.email}'),
                OutlineButton( child: Text("Logout"), onPressed: (){
                  _logout();
                },)
              ],
            )
                : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    child: Text('Login with Google',
                      style:  TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.indigo,

                      ),
                    ),
                    onPressed: () {
                      _login();
                    },

                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  OutlinedButton(onPressed:(){
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder:
                                (context){
                              return home_page();
                            }));
                  }, child: Text('Go Back to Home',
                    style:  TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.indigo,

                    ),
                  ),)
                ],
              ),
            )),
      ),
    );
  }
}
