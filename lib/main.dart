import 'package:flutter/material.dart';
import 'login.dart';


void main()  {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Social Media Integration',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor:Colors.blue.shade100,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: home_page(),
    );
  }

}