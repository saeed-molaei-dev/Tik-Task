// ignore_for_file: file_names, unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:round_2_start/MiniClass.dart';
import 'package:round_2_start/Pages/Home.dart';
import 'package:round_2_start/Pages/Menu/AddNewActivity.dart';
import 'package:round_2_start/Provider/MainProvider.dart';
import 'package:animated_rotation/animated_rotation.dart' as prefix;
import 'package:flutter/src/widgets/implicit_animations.dart' as prefix;

class DrawerList extends StatefulWidget {
  @override
  _DrawerListState createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                Container(
                    child: DrawerHeader(
                        child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      padding: EdgeInsets.only(bottom: 8),
                      // color: Colors.red,
                      child: Image(
                        image: AssetImage('assets/Images/UserDefaultImage.png'),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    Text('hi ' + MainProvider.UserName)
                  ],
                ))),
                Container(
                  child: Column(children: <Widget>[
                    DrawerItems(
                      enabledItem: true,
                      // leadingItem: Icons.data_saver_on,
                      textItem: 'افزودن فعالیت جدید',
                      onTapItem: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AddNewActivity()));
                      },
                    ),
                    DrawerItems(
                      enabledItem: false,
                      // leadingItem: Icons.data_saver_on,
                      textItem: 'آیتم غیرفعال',
                      onTapItem: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      },
                    ),
                  ]),
                )
              ],
            ),
          ),
          appBar: AppBar(
            actions: [
              Container(
                margin: EdgeInsets.fromLTRB(8, 8, 8, 16),
                child: Image(
                  image: AssetImage('assets/Images/MiniFaLogo.png'),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ],
            title: Text("لیست کارها"),
            backgroundColor: MainProvider.RedColor.withOpacity(0.85),
          ),
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
              Center(
                child: AnimatedRotation(
                  duration: Duration(milliseconds: 0),
                  turns: 0.9,
                  child: Opacity(
                    opacity: 0.15,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Image(
                          image: AssetImage('assets/Images/EnLogo.png'),
                          fit: BoxFit.contain,
                          // width: 5,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Image(
                          image: AssetImage('assets/Images/FaLogoRotate.png'),
                          fit: BoxFit.contain,
                          // width: 5,
                        ),
                      ],
                    ),
                  ),
                ),

                //  RotationTransition(child: Text(('my body'))),
              ),
            ],
          )),
    );
  }
}
