// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:round_2_start/Pages/Home.dart';
import 'package:round_2_start/Pages/Login/Login.dart';
import 'package:round_2_start/Pages/Login/Register.dart';
import 'package:round_2_start/Pages/Login/Splash.dart';
import 'package:round_2_start/Pages/Menu/AddNewActivity.dart';
import 'package:round_2_start/Pages/test.dart';
import 'package:round_2_start/Provider/MainProvider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => MainProvider(),
        )
      ],
      child: ToDoApp(),
    ),
  );
}

/////////////////////////////////tozihat
class ToDoApp extends StatefulWidget {
  @override
  _ToDoAppState createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To Do App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // fontFamily: 'iran_yekan',
        primaryColor: MainProvider.PrimaryColor,
      ),
      // home: Directionality(textDirection: TextDirection.rtl, child: Splash()), //finaly
      home: Directionality(textDirection: TextDirection.rtl, child: Register()),
    );
  }
}
