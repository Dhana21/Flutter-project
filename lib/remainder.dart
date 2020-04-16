import 'package:flutter/material.dart';
import 'package:smart_emi/Mypicker.dart';

void main()
{
  runApp(Remainder());
}

 class Remainder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.orange[800],
        highlightColor: Colors.orange[800],
        cardColor:Colors.orange[800],
        accentColor: Colors.orange[800], 

      ),
      
      home:Mypicker()
    );
  }
}