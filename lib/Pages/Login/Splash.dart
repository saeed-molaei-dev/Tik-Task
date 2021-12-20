// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:round_2_start/MiniClass.dart';
import 'package:round_2_start/Pages/Login/Login.dart';
import 'package:round_2_start/Provider/MainProvider.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  startTime() {
    var _duration = Duration(milliseconds: 3500);
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
      backgroundColor: MainProvider.WhiteColor,
      body: Stack(
        fit: StackFit.expand,
        children: [
          BackgroundCircles(),
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Image(
                image: AssetImage('assets/Images/EnLogo.png'),
                fit: BoxFit.contain,
                width: 175,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Image(
                image: AssetImage('assets/Images/FaLogo.png'),
                fit: BoxFit.contain,
                width: MediaQuery.of(context).size.width >
                        MediaQuery.of(context).size.height
                    ? MediaQuery.of(context).size.width * 0.3
                    : MediaQuery.of(context).size.width * 0.8,
              ),
              SizedBox(
                height: 16,
              ),
              Image(
                image: AssetImage('assets/Images/Shadow.png'),
                fit: BoxFit.contain,
                width: (MediaQuery.of(context).size.width >
                            MediaQuery.of(context).size.height
                        ? MediaQuery.of(context).size.width * 0.3
                        : MediaQuery.of(context).size.width * 0.8) *
                    0.85,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 3,
                      color: MainProvider.SecondaryColor,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'اپلیکیشن جامع لیست کارها و وظایف',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 3,
                      color: MainProvider.SecondaryColor,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                height: 32,
                width: 32,
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                  color: MainProvider.RedColor,
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                'Made by',
                style: TextStyle(
                    letterSpacing: 1.05,
                    fontFamily: 'PokerHunters',
                    fontSize: 12),
              ),
              SizedBox(
                height: 3,
              ),
              Text('SAM Company',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1.05,
                    fontFamily: 'PokerHunters',
                    fontWeight: FontWeight.bold,
                  )),
              SizedBox(
                height: 16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
