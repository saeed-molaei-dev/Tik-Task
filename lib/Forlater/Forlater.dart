// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

class DropdownBtn extends StatefulWidget {
  const DropdownBtn({Key? key}) : super(key: key);

  @override
  _DropdownBtnState createState() => _DropdownBtnState();
}

class _DropdownBtnState extends State<DropdownBtn> {
  String dropdownValue = 'num1';
  var items = ['num0', 'num1', 'num2', 'num3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('hi'),
              DropdownButton(
                items: items.map((itemsName) {
                  return DropdownMenuItem(
                      value: itemsName, child: Text(itemsName));
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    dropdownValue = newValue.toString();
                  });
                },
                value: dropdownValue,
              ),
              Text('Selected: ${dropdownValue}'),
            ],
          ),
        ),
      ),
    );
  }
}
