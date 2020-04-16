import 'package:flutter/material.dart';
import 'package:smart_emi/firstscreen.dart';
import 'package:splashscreen/splashscreen.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange[800],
        highlightColor: Colors.orange[800],
        cardColor:Colors.orange[800],
        accentColor: Colors.orange[800], 
        cursorColor: Colors.orange
      ),
      home: MyApp(),
      )
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      backgroundColor: Colors.orange[800],
      image: Image.asset('assets/emi.jpg'),
      loaderColor: Colors.white,
      photoSize: 150.0,
      navigateAfterSeconds: HomePage(),
    );
  }
}