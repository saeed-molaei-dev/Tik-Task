// ignore_for_file: file_names

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:round_2_start/Pages/Drawer/DrawerList.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('To Do App'),
        ),
        body: Container(
          child: DrawerList(),
        ),
      ),
    );
  }
}
