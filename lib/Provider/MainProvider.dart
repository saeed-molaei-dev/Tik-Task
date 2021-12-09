// ignore_for_file: file_names, unused_import

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class MainProvider extends ChangeNotifier {
  static Color PrimaryColor = Color(0xff4f0080);
  static Color LightColor = Color(0xffddbbdd);
  static Color TextColor = Color(0xff110011);
  static Color WhiteColor = Color(0xffffeeff);
  // static Color SecondryColor = Color(0xff806acd);
  // static Color AccentColor = Color(0xff00002f);
  bool IsInit = false;
  static String UserName='';

}
