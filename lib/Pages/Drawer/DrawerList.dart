// ignore_for_file: file_names, unnecessary_new

import 'package:flutter/material.dart';
import 'package:round_2_start/MiniClass.dart';
import 'package:round_2_start/Pages/Home.dart';
import 'package:round_2_start/Pages/Menu/AddNewActivity.dart';
import 'package:round_2_start/Provider/MainProvider.dart';

class DrawerList extends StatefulWidget {
  @override
  _DrawerListState createState() => _DrawerListState();
}

class _DrawerListState extends State<DrawerList> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: <Widget>[
                Container(
                    child: DrawerHeader(
                        child: Column(
                  children: [
                    Image(
                      image: AssetImage('assets/Images/User.png'),
                      fit: BoxFit.contain,
                    ),
                    Text('hi ' + MainProvider.UserName)
                  ],
                ))),
                Container(
                  child: Column(children: <Widget>[
                    DrawerItems(
                      enabledItem: true,
                      leadingItem: Icons.data_saver_on,
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
                      leadingItem: Icons.data_saver_on,
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
            title: Text("My To Do App"),
          ),
          body: Center(
            child: Text(('my body')),
          )),
    );
  }
}
