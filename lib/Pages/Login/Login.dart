// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:round_2_start/MiniClass.dart';
import 'package:round_2_start/Pages/Home.dart';
import 'package:round_2_start/Pages/Login/Register.dart';
import 'package:round_2_start/Provider/MainProvider.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var phoneNumber = TextEditingController();
  var password = TextEditingController();
  bool _passwordVisible = false;
  bool counterNumber = false;
  bool counterPassword = false;
  String errorTextPhoneNumber = '';
  String errorTextPassword = '';

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: -255,
              right: -375,
              child: Opacity(
                opacity: 0.05,
                child: Container(
                  margin: EdgeInsets.all(5),
                  width: 650,
                  height: 650,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(650))),
                  child: Text(' '),
                ),
              ),
            ),
            Positioned(
              bottom: -600,
              right: -550,
              child: Container(
                margin: EdgeInsets.all(5),
                width: 900,
                height: 900,
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.all(Radius.circular(650))),
                child: Text(' '),
              ),
            ),
            Positioned(
              bottom: -500,
              left: -550,
              child: Container(
                margin: EdgeInsets.all(5),
                width: 900,
                height: 900,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(Radius.circular(650))),
                child: Text(' '),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Image(
                  image: AssetImage('assets/Images/EnLogo.png'),
                  fit: BoxFit.contain,
                  width: 175,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                Image(
                  image: AssetImage('assets/Images/FaLogo.png'),
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width >
                          MediaQuery.of(context).size.height
                      ? MediaQuery.of(context).size.width * 0.3
                      : MediaQuery.of(context).size.width * 0.8,
                ),
                SizedBox(
                  height: 16,
                ),
                Image(
                  image: AssetImage('assets/Images/Shadow.png'),
                  fit: BoxFit.contain,
                  width: (MediaQuery.of(context).size.width >
                              MediaQuery.of(context).size.height
                          ? MediaQuery.of(context).size.width * 0.3
                          : MediaQuery.of(context).size.width * 0.8) *
                      0.85,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                /*PhoneNumber*/ Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        depth: -5,
                        shadowDarkColorEmboss: Colors.black,
                        shadowLightColorEmboss: Colors.black54,
                        color: Colors.grey,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(
                                MediaQuery.of(context).size.width * 0.5))),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.phone,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(11)
                        ],
                        style: TextStyle(
                            fontSize: 16,
                            height: 1,
                            color: MainProvider.TextColor),
                        decoration: InputDecoration(
                            filled: true,
                            // fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  MediaQuery.of(context).size.width * 0.5)),
                            ),
                            hintText: 'شماره کاربری',
                            hintStyle:
                                TextStyle(fontSize: 16, color: Colors.white)),
                        controller: phoneNumber,
                        onChanged: (value) {
                          setState(() {
                            int phoneNumberLen0 =
                                int.parse(phoneNumber.text[0]);
                            int phoneNumberLen1 =
                                int.parse(phoneNumber.text[1]);
                            if ((phoneNumber.text).length == 11 &&
                                phoneNumberLen0 == 0 &&
                                phoneNumberLen1 == 9) {
                              counterNumber = true;
                            } else {
                              counterNumber = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    errorTextPhoneNumber,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
                /*Password*/ Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                        depth: -5,
                        shadowDarkColorEmboss: Colors.black,
                        shadowLightColorEmboss: Colors.black54,
                        color: Colors.grey,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(
                                MediaQuery.of(context).size.width * 0.5))),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.right,
                        obscureText: !_passwordVisible,
                        keyboardType: TextInputType.phone,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(11)
                        ],
                        style: TextStyle(fontSize: 16, height: 1),
                        decoration: InputDecoration(
                            suffixIcon: IconButton(
                              icon: Icon(
                                _passwordVisible
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                color: Theme.of(context).hintColor,
                              ),
                              onPressed: () {
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                            filled: true,
                            fillColor: Colors.grey,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                            ),
                            hintText: 'رمز ورود',
                            hintStyle:
                                TextStyle(fontSize: 16, color: Colors.white)),
                        controller: password,
                        onChanged: (value) {
                          setState(() {
                            int phoneNumberLen0 = int.parse(password.text[0]);
                            int phoneNumberLen1 = int.parse(password.text[1]);

                            if ((password.text).length == 11 &&
                                phoneNumberLen0 == 0 &&
                                phoneNumberLen1 == 9) {
                              counterPassword = true;
                            } else {
                              counterPassword = false;
                            }
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    errorTextPassword,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
                /*Button*/ CustomButton(
                  title: 'ادامه',
                  onPressed: () {
                    // Navigator.pop(context);

                    errorTextPhoneNumber = '';
                    errorTextPassword = '';
                    if (counterNumber == false) {
                      setState(() {
                        errorTextPhoneNumber = 'شماره باید به درستی وارد شود';
                      });
                      // Navigator.pop(context);
                    } else if (counterPassword == false) {
                      setState(() {
                        errorTextPassword =
                            'لطفا نسبت به رمز وارد شده اطمینان حاصل کنید';
                      });
                      // Navigator.pop(context);
                    } else {
                      LoadingModal.show(context);
                      Future.delayed(const Duration(milliseconds: 3000), () {
                        MainProvider.UserName = phoneNumber.text;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      });
                    }
                  },
                  color: counterNumber == true && counterPassword == true
                      ? MainProvider.red
                      : MainProvider.grey,
                  textColor: counterNumber == true && counterPassword == true
                      ? MainProvider.White
                      : MainProvider.darkgrey,
                ),
                SizedBox(
                  height: 48,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: TextButton(
                      onPressed: () {},
                      child: Text('فراموشی رمز عبور',
                          style: TextStyle(
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                              color: MainProvider.darkgrey))),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text('ثبت نام',
                        style: TextStyle(
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            color: MainProvider.darkgrey))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
