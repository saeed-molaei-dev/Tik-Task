// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:round_2_start/Pages/Login/Login.dart';
import 'package:round_2_start/Provider/MainProvider.dart';

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
          Positioned(
            top: -255,
            right: -375,
            child: Opacity(
              opacity: 0.05,
              child: Container(
                margin: EdgeInsets.all(5),
                width: 650,
                height: 650,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(650))),
                child: Text(' '),
              ),
            ),
          ),
          Positioned(
            bottom: -600,
            right: -550,
            child: Container(
              margin: EdgeInsets.all(5),
              width: 900,
              height: 900,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.all(Radius.circular(650))),
              child: Text(' '),
            ),
          ),
          Positioned(
            bottom: -500,
            left: -550,
            child: Container(
              margin: EdgeInsets.all(5),
              width: 900,
              height: 900,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.all(Radius.circular(650))),
              child: Text(' '),
            ),
          ),
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
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: (MediaQuery.of(context).size.width >
                            MediaQuery.of(context).size.height
                        ? MediaQuery.of(context).size.width * 0.3
                        : MediaQuery.of(context).size.width * 0.8),
                    height: (MediaQuery.of(context).size.width >
                                MediaQuery.of(context).size.height
                            ? MediaQuery.of(context).size.width * 0.3
                            : MediaQuery.of(context).size.width * 0.8) /
                        3,
                    decoration: BoxDecoration(
                        // color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 25),
                            blurRadius: 100,
                            color: MainProvider.red.withOpacity(0.11),
                          ),
                        ],
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(20, 10))),
                    child: Text(' '),
                  ),
                  Image(
                    image: AssetImage('assets/Images/FaLogo.png'),
                    fit: BoxFit.contain,
                    width: MediaQuery.of(context).size.width >
                            MediaQuery.of(context).size.height
                        ? MediaQuery.of(context).size.width * 0.3
                        : MediaQuery.of(context).size.width * 0.8,
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 3,
                      color: Colors.grey[300],
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
                      color: Colors.grey[300],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                height: 32,
                width: 32,
                // color: Colors.pink,
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                  color: Colors.red,
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
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 3,
              ),
              Text('SAM Company',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
