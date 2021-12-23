// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:round_2_start/Pages/Drawer/DrawerList.dart';
// import 'package:animated_rotation/animated_rotation.dart';
import 'package:round_2_start/Provider/MainProvider.dart';

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
        body: Container(
          child: DrawerList(),
        ),
      ),
    );
  }
}
