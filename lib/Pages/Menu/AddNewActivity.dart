// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:html';
import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:round_2_start/MiniClass.dart';
import 'package:round_2_start/Pages/Drawer/DrawerList.dart';
import 'package:round_2_start/Provider/MainProvider.dart';
import 'package:shamsi_date/shamsi_date.dart';
import 'package:persian_datetimepickers/persian_datetimepickers.dart';

class AddNewActivity extends StatefulWidget {
  @override
  _AddNewActivityState createState() => _AddNewActivityState();
}

class _AddNewActivityState extends State<AddNewActivity> {
  var TitleActivity = TextEditingController();
  var DescriptionActivity = TextEditingController();
  String clock = '11:11';
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('افزودن فعالیت  جدید'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              /*عنوان فرایند*/ Row(children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 16),
                  width: MediaQuery.of(context).size.width * 0.17,
                  height: MediaQuery.of(context).size.width * 0.17,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: MainProvider.PrimaryColor, spreadRadius: 3)
                    ],
                    color: MainProvider.LightColor,
                    borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.width * 0.17),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Image(
                      image: AssetImage('assets/Images/Splash.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 16),
                    height: 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: MainProvider.PrimaryColor, spreadRadius: 3)
                      ],
                      color: MainProvider.LightColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.right,
                        inputFormatters: <TextInputFormatter>[
                          LengthLimitingTextInputFormatter(30)
                        ],
                        style: TextStyle(
                            fontSize: 16,
                            height: 1,
                            color: MainProvider.TextColor),
                        decoration: InputDecoration(
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                            ),
                            hintText: 'عنوان فرایند خود را وارد کنید',
                            hintStyle: TextStyle(
                                fontSize: 16, color: MainProvider.TextColor)),
                        controller: TitleActivity,
                        // onChanged: (value) {
                        //   setState(() {});
                        // },
                      ),
                    ),
                  ),
                ),
              ]),
              /*توضیحات*/ Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: MainProvider.PrimaryColor, spreadRadius: 3)
                  ],
                  color: MainProvider.LightColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Expanded(
                  child: Container(
                    child: TextField(
                      maxLines: 3,
                      textAlignVertical: TextAlignVertical.center,
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 16,
                          height: 1,
                          color: MainProvider.TextColor),
                      decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          hintText: 'توضیحات',
                          hintStyle: TextStyle(
                              fontSize: 16, color: MainProvider.TextColor)),
                      controller: DescriptionActivity,
                      // onChanged: (value) {
                      //   setState(() {});
                      // },
                    ),
                  ),
                ),
              ),
              Divider(
                color: MainProvider.PrimaryColor,
              ),
              /*تاریخ*/ Row(
                children: [
                  Text(clock),
                ],
              ),
              Divider(
                color: MainProvider.PrimaryColor,
              ),
              /*ساعت یادآوری*/ Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  /*ساعت*/ Container(
                    width: 165,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: MainProvider.PrimaryColor,
                    ),
                    child: CustomButton(
                      title: 'ساعت $clock',
                      onPressed: () {},
                      color: 1 == true && 2 == true
                          ? MainProvider.PrimaryColor
                          : MainProvider.LightColor,
                      textColor: 1 == true && 2 == true
                          ? MainProvider.WhiteColor
                          : MainProvider.PrimaryColor,
                    ),
                  ),
                  /*یادآوری*/ Container(
                    width: 165,
                    height: 55,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                      color: MainProvider.PrimaryColor,
                    ),
                    child: CustomCheckBox(
                      title: 'یادآوری',
                      onPressed: () {},
                      color: 1 == true && 2 == true
                          ? MainProvider.PrimaryColor
                          : MainProvider.LightColor,
                      textColor: 1 == true && 2 == true
                          ? MainProvider.WhiteColor
                          : MainProvider.PrimaryColor,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 16,
              ),
              /*مشاهده و ذخیره*/ Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    /*مشاهده*/ Container(
                      width: 165,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: MainProvider.PrimaryColor,
                      ),
                      child: CustomButton(
                        title: 'مشاهده',
                        onPressed: () {
                          ShowActivityModal(
                                  TitleActivityModal: 'TitleActivityModal',
                                  DescriptionActivityModal:
                                      'DescriptionActivityModal',
                                  onPressed: () {})
                              .show(context);
                        },
                        color: 1 == true && 2 == true
                            ? MainProvider.PrimaryColor
                            : MainProvider.LightColor,
                        textColor: 1 == true && 2 == true
                            ? MainProvider.WhiteColor
                            : MainProvider.PrimaryColor,
                      ),
                    ),
                    /*ذخیره*/ Container(
                      width: 165,
                      height: 55,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                        color: MainProvider.PrimaryColor,
                      ),
                      child: CustomButton(
                        title: 'ذخیره',
                        onPressed: () {},
                        color: 1 == true && 2 == true
                            ? MainProvider.PrimaryColor
                            : MainProvider.LightColor,
                        textColor: 1 == true && 2 == true
                            ? MainProvider.WhiteColor
                            : MainProvider.PrimaryColor,
                      ),
                    ),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
