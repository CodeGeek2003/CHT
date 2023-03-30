import 'dart:async';
import 'package:flutter/material.dart';

import 'layout/home.dart';
import 'login/login.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6),  () => Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => login())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.network(//logo image
                'https://th.bing.com/th/id/R.ba1ca3bb07a2608fa4f6a985c5a19325?rik=CkrDHLOvv4eH1A&riu=http%3a%2f%2f3.bp.blogspot.com%2f-fdquRzOA5Ww%2fUgJzc27SGvI%2fAAAAAAAADdY%2fTOMmWdDGVVI%2fs1600%2fmedical%2bred%2bcross%2b1.jpg&ehk=cSpm6VspMBp92%2fmHR%2fyMffik3E3ZePaYnDWEdzbt%2b%2fU%3d&risl=&pid=ImgRaw&r=0', // Replace with your own image URL
                height: 150,
                width: 150,
              ),
              SizedBox(height: 20),
              Text(
                'Chronic Health Tracker',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
