import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
      Timer(Duration(seconds: 2), (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MyHomePage()));
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        height:100,
        width: 100,
        color: Colors.blue,
      )
    );
  }
}