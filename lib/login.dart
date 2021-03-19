import 'package:flutter/material.dart';
import 'google.dart';
import 'facebook.dart';


class home_page extends StatefulWidget {
  @override
  _home_pageState createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Social Media Integration',textScaleFactor: 1.2,),
        backgroundColor: Colors.indigo,
      ),
      body: Column(

        children: [

          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom:0.0),
                  child: Text('Hello',style:
                   TextStyle(
                    fontSize: 100.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,


                  ),
                  ),

                  ),


                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom:0.0),
                      child: Text('Users',style:
                      TextStyle(
                        fontSize: 100.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,

                      ),),
                    ),


                    Text('. ',style:
                    TextStyle(
                      fontSize: 100.0,
                      color: Colors.orangeAccent,
                      fontWeight: FontWeight.bold,
                    ),),


                  ],
                ),



              ],
            ),
          ),

          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [



                Container(
                  height: 70,
                  width: 350,
                  margin: EdgeInsets.all(25.0),


                  // ignore: deprecated_member_use
                  child: RaisedButton(
                      color: Colors.white,

                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(50.0),
                      ),


                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder:
                                    (context){
                                  return kGoogle();
                                }));
                      },


                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          Image(
                            image: AssetImage('images/google.png',),
                            height: 35.0,
                            width: 35.0,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),


                          Text('Sign in with Google',
                            style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            ),

                        ],
                      )

                  ),
                ),

                SizedBox(
                  height: 1.0,
                ),

                Container(
                  height: 70,
                  width: 350,

                  margin: EdgeInsets.all(25.0),
                  // ignore: deprecated_member_use
                  child: RaisedButton(
                    color: Colors.white,


                    shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(50.0),
                    ),

                    // style: ElevatedButton.styleFrom(shape: new RoundedRectangleBorder(
                    //   borderRadius: new BorderRadius.circular(30.0),
                    // ),),



                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder:
                                  (context){
                                return kFacebook();
                              }));

                    },
                    child: Container(


                      child:Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            image: AssetImage('images/facebook.png',),
                            height: 35.0,
                            width: 35.0,

                          ),

                          SizedBox(
                            width: 20.0,
                          ),

                          Text('Sign in with Facebook',
                            style:  TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.w400,
                              color: Colors.indigo,

                            ),
                            ),

                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
