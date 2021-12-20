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
  var UserName = TextEditingController();
  var password = TextEditingController();
  bool _passwordVisible = false;
  bool counterNumber = false;
  bool counterPassword = false;
  String errorTextUserName = '';
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
            BackgroundCircles(),
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
                  height: 8,
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
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                /*UserName*/ Container(
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
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: TextField(
                        autofocus: true,
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 20,
                          color: MainProvider.BlackColor,
                          decorationColor: MainProvider.BlackColor,
                        ),
                        cursorColor: MainProvider.RedColor,
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: MainProvider.TertiaryColor,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius: BorderRadius.all(Radius.circular(
                                  MediaQuery.of(context).size.width * 0.5)),
                            ),
                            hintText: 'نام کاربری',
                            hintStyle: TextStyle(
                                fontSize: 20,
                                color: MainProvider.SecondaryColor)),
                        controller: UserName,
                        onSubmitted: (value) {},
                        onChanged: (value) {
                          setState(() {
                            if ((UserName.text).length > 2) {
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
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    errorTextUserName,
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
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: TextField(
                        textAlignVertical: TextAlignVertical.center,
                        textAlign: TextAlign.right,
                        obscureText: !_passwordVisible,
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(5)
                        ],
                        style: TextStyle(
                          fontSize: 20,
                          color: MainProvider.BlackColor,
                          decorationColor: MainProvider.BlackColor,
                        ),
                        decoration: InputDecoration(
                            filled: true,
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
                            fillColor: MainProvider.TertiaryColor,
                            border: OutlineInputBorder(
                              borderSide: BorderSide.none,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(16)),
                            ),
                            hintText: 'رمز ورود',
                            hintStyle: TextStyle(
                                fontSize: 20,
                                color: MainProvider.SecondaryColor)),
                        controller: password,
                        onChanged: (value) {
                          setState(() {
                            // int UserNameLen0 = int.parse(password.text[0]);
                            if ((password.text).length == 5 ) {
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
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Text(
                    errorTextPassword,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
                /*Button*/ CustomButton(
                  title: 'تأیید',
                  color: counterNumber == true && counterPassword == true
                      ? MainProvider.GreenColor
                      : MainProvider.RedColor,
                  textColor: counterNumber == true && counterPassword == true
                      ? MainProvider.WhiteColor
                      : MainProvider.WhiteColor,
                  onPressed: () {
                    errorTextUserName = '';
                    errorTextPassword = '';
                    if (counterNumber == false) {
                      setState(() {
                        errorTextUserName = 'نام کاربری باید به درستی وارد شود';
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
                      Future.delayed(const Duration(milliseconds: 3500), () {
                        MainProvider.UserName = UserName.text;
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Home()));
                      });
                    }
                  },
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.09,
                ),
                /*ForgetPassword*/ TextButton(
                    onPressed: () {},
                    child: Text('فراموشی رمز عبور',
                        style: TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.underline,
                            color: MainProvider.PrimaryColor))),
                /*Register*/ TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Register()));
                    },
                    child: Text('ثبت نام',
                        style: TextStyle(
                            fontSize: 18,
                            decoration: TextDecoration.underline,
                            color: MainProvider.PrimaryColor))),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
