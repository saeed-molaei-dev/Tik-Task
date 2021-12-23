// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_web_libraries_in_flutter, unused_import, use_key_in_widget_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:round_2_start/MiniClass.dart';
import 'package:round_2_start/Pages/Drawer/DrawerList.dart';
import 'package:round_2_start/Provider/MainProvider.dart';

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
        backgroundColor: MainProvider.WhiteColor,
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          backgroundColor: MainProvider.PrimaryColor,
          actions: [
            Container(
              margin: EdgeInsets.fromLTRB(8, 8, 8, 16),
              child: Image(
                image: AssetImage('assets/Images/MiniFaLogo.png'),
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: MainProvider.WhiteColor,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ),
                  Text('افزودن فعالیت  جدید'),
                ],
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Opacity(
              opacity: .5,
              child: BackgroundCircles(),
            ),
            /*header*/ Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                color: MainProvider.RedColor,
              ),
              child: Stack(
                children: [
                  /*2 Circles in top in background*/ Stack(
                    children: [
                      Positioned(
                        bottom: 15,
                        left: -120,
                        child: Opacity(
                          opacity: 0.9,
                          child: Container(
                            margin: EdgeInsets.all(5),
                            width: 300,
                            height: 300,
                            decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(300))),
                            child: Text(' '),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 75,
                        right: 10,
                        child: Opacity(
                          opacity: 0.9,
                          child: Container(
                            margin: EdgeInsets.all(5),
                            width: 300,
                            height: 300,
                            decoration: BoxDecoration(
                                color: Colors.white10,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(300))),
                            child: Text(' '),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            /*فرایند*/ Padding(
              padding: EdgeInsets.fromLTRB(
                  24, (MediaQuery.of(context).size.height * 0.2) + 24, 24, 24),
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
                              blurStyle: BlurStyle.solid,
                              blurRadius: 8,
                              color: MainProvider.RedColor,
                              spreadRadius: 1)
                        ],
                        color: MainProvider.TertiaryColor,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.17),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4),
                        child: Image(
                          image: AssetImage('assets/Images/ComingSoon.png'),
                          color: Colors.deepPurple,
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
                                blurStyle: BlurStyle.solid,
                                blurRadius: 8,
                                color: MainProvider.RedColor,
                                spreadRadius: 1)
                          ],
                          color: MainProvider.TertiaryColor,
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
                                color: MainProvider.PrimaryColor),
                            decoration: InputDecoration(
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16)),
                                ),
                                hintText: 'عنوان فرایند خود را وارد کنید',
                                hintStyle: TextStyle(
                                    fontSize: 16,
                                    color: MainProvider.PrimaryColor)),
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
                        BoxShadow(
                            blurStyle: BlurStyle.solid,
                            blurRadius: 8,
                            color: MainProvider.RedColor,
                            spreadRadius: 1)
                      ],
                      color: MainProvider.TertiaryColor,
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
                              color: MainProvider.PrimaryColor),
                          decoration: InputDecoration(
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                              ),
                              hintText: 'توضیحات',
                              hintStyle: TextStyle(
                                  fontSize: 16,
                                  color: MainProvider.PrimaryColor)),
                          controller: DescriptionActivity,
                          // onChanged: (value) {
                          //   setState(() {});
                          // },
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    color: MainProvider.RedColor,
                  ),
                  /*ساعت و تاریخ*/ Row(
                    children: [
                      Text('tarikh\n$clock'),
                    ],
                  ),
                  Divider(
                    color: MainProvider.RedColor,
                  ),
                  /*یادآوری*/ Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'تکرار یادآوری:',
                        style: TextStyle(fontWeight: FontWeight.w900),
                      ),
                      RememberCheckBox(
                        onPressed: () {
                          RememberModal.show(context);
                          Future.delayed(const Duration(milliseconds: 3500),
                              () {
                            Navigator.pop(context);
                          });
                        },
                        title: 'روزانه',
                      ),
                      RememberCheckBox(
                        onPressed: () {
                          RememberModal.show(context);
                          Future.delayed(const Duration(milliseconds: 3500),
                              () {
                            Navigator.pop(context);
                          });
                        },
                        title: 'هفتگی',
                      ),
                      RememberCheckBox(
                        onPressed: () {
                          RememberModal.show(context);
                          Future.delayed(const Duration(milliseconds: 3500),
                              () {
                            Navigator.pop(context);
                          });
                        },
                        title: 'ماهانه',
                      ),
                      RememberCheckBox(
                        onPressed: () {
                          RememberModal.show(context);
                          Future.delayed(const Duration(milliseconds: 3500),
                              () {
                            Navigator.pop(context);
                          });
                        },
                        title: 'سالانه',
                      ),
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
                          ),
                          child: CustomButton(
                            title: 'مشاهده',
                            onPressed: () {
                              ShowActivityModal(
                                      TitleActivityModal:
                                          'کم کم درستش میکنم اینم',
                                      DescriptionActivityModal:
                                          'بعدا اعمال میشه',
                                      onPressed: () {})
                                  .show(context);
                            },
                            color: true == true && true == true
                                ? MainProvider.RedColor
                                : Colors.redAccent,
                            textColor: true == true && true == true
                                ? MainProvider.WhiteColor
                                : Colors.black45,
                          ),
                        ),
                        /*ذخیره*/ Container(
                          width: 165,
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          child: CustomButton(
                            title: 'ذخیره',
                            onPressed: () {},
                            color: true == true && true == true
                                ? MainProvider.GreenColor
                                : Colors.lightGreenAccent,
                            textColor: true == true && true == true
                                ? MainProvider.WhiteColor
                                : Colors.black45,
                          ),
                        ),
                      ]),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
