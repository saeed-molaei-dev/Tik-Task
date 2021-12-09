// ignore_for_file: file_names, prefer_const_constructors
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:round_2_start/Pages/Login/Login.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  startTime() {
    var _duration = Duration(milliseconds: 3000);
    return Timer(_duration, navigationPage);
  }

  navigationPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (BuildContext context) {
          return Directionality(
              textDirection: TextDirection.rtl, child: Login());
        },
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Center(
              child: Column(
                children: [
                  Container(
                      width: 200,
                      height: 200,
                      child: Image(
                        image: AssetImage('assets/Images/Splash.png'),
                        fit: BoxFit.cover,
                      )),
                      SizedBox(height: 15,),
                  CircularProgressIndicator()
                ],
              ),
            ),
          ]),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        elevation: 0.0,
        child: Container(
          height: 50,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Made by',
                style: TextStyle(fontSize: 12),
              ),
              Text('Sam Company',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
