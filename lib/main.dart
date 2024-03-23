import 'package:bmi/homePage.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(BmiApp());
}

class BmiApp extends StatefulWidget {
  BmiApp({Key? key}) : super(key: key);

  @override
  State<BmiApp> createState() => _BmiAppState();
}

class _BmiAppState extends State<BmiApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: HomePage(),
    );
  }
}




