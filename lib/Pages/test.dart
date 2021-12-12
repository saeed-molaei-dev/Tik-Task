// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
// import 'package:persian_datetime_picker/persian_datetime_picker.dart';
// import 'package:jalali_calendar/jalali_calendar.dart';

class ForTest extends StatefulWidget {
  const ForTest({Key? key}) : super(key: key);

  @override
  _ForTestState createState() => _ForTestState();
}

class _ForTestState extends State<ForTest> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: TextButton(
            onPressed: () async {
              print('ok');
            },
            child: Text('11')),
      ),
    );
  }
}
