// ignore_for_file: file_names, unused_import

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  /*dark*/
  static Color BlackColor = Color(0xff110011);
  static Color GreenColor = Color(0xff057200);
  static Color PrimaryColor = Color(0xff3d3d3d);
  static Color RedColor = Color(0xffe80d17);
  static Color SecondaryColor = Color(0xff9b9b9b);
  static Color TertiaryColor = Color(0xffefefef);
  static Color WhiteColor = Color(0xffefefef);

  /*light*/
  // static Color Color = Color(0xff000000);

  bool IsInit = false;
  static String UserName = '';
}
