// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:round_2_start/MiniClass.dart';
import 'package:round_2_start/Pages/Home.dart';
import 'package:round_2_start/Pages/Login/Register.dart';
import 'package:round_2_start/Provider/MainProvider.dart';

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
        body: Container(
          decoration: BoxDecoration(
            color: MainProvider.WhiteColor,
          ),
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
///
///
// ///
// AnimatedContainer(
//       duration: Duration(seconds: 5),
//       margin: const EdgeInsets.all(16),
//       decoration: focusNode.hasFocus ? BoxDecoration(boxShadow: [BoxShadow(blurRadius: 6)]) : null,
//       child: Form(
//         key: _formKey,
//         child: TextFormField(
//           focusNode: focusNode,
//           decoration: InputDecoration(
//               fillColor: Colors.white,
//               hoverColor: Colors.white,
//               filled: true,
//               enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
//               focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey, width: 1))),
//         ),
//       ),
//     )
///
///
///

                /*PhoneNumber*/ Container(
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
                        fontSize: 16, height: 1, color: MainProvider.TextColor),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        hintText: 'شماره کاربری',
                        hintStyle: TextStyle(fontSize: 16, color: Colors.grey)),
                    controller: phoneNumber,
                    onChanged: (value) {
                      setState(() {
                        int phoneNumberLen0 = int.parse(phoneNumber.text[0]);
                        int phoneNumberLen1 = int.parse(phoneNumber.text[1]);

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
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Text(
                    errorTextPhoneNumber,
                    style: TextStyle(color: Colors.red, fontSize: 12),
                  ),
                ),
                /*Password*/ Container(
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
                            color: Theme.of(context).primaryColor,
                          ),
                          onPressed: () {
                            setState(() {
                              _passwordVisible = !_passwordVisible;
                            });
                          },
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(Radius.circular(16)),
                        ),
                        hintText: 'رمز ورود',
                        hintStyle: TextStyle(fontSize: 16, color: Colors.grey)),
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
                    LoadingModal.show(context);
                    Navigator.pop(context);

                    errorTextPhoneNumber = '';
                    errorTextPassword = '';
                    if (counterNumber == false) {
                      setState(() {
                        errorTextPhoneNumber = 'شماره باید به درستی وارد شود';
                      });
                      Navigator.pop(context);
                    } else if (counterPassword == false) {
                      setState(() {
                        errorTextPassword =
                            'لطفا نسبت به رمز وارد شده اطمینان حاصل کنید';
                      });
                      Navigator.pop(context);
                    } else {
                      MainProvider.UserName = phoneNumber.text;
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Home()));
                    }
                  },
                  color: counterNumber == true && counterPassword == true
                      ? MainProvider.PrimaryColor
                      : MainProvider.LightColor,
                  textColor: counterNumber == true && counterPassword == true
                      ? MainProvider.WhiteColor
                      : MainProvider.PrimaryColor,
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
                              color: MainProvider.PrimaryColor))),
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
                            color: MainProvider.PrimaryColor))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
