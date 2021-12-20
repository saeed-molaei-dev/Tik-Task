// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:round_2_start/Provider/MainProvider.dart';

class ComingSoon extends StatefulWidget {
  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MainProvider.SecondaryColor,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              size: 50,
              color: MainProvider.PrimaryColor,
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.pink, //change your color here
        ),
      ),
      backgroundColor: MainProvider.SecondaryColor,
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          // MyAppbar(),
          Expanded(
            child: Center(
              child:
                  // Image(
                  //   image: AssetImage('assets/Images/ComingSoon.png'),
                  //   fit: BoxFit.contain,
                  //   // width: (MediaQuery.of(context).size.width >
                  //   //             MediaQuery.of(context).size.height
                  //   //         ? MediaQuery.of(context).size.width * 0.2
                  //   //         : MediaQuery.of(context).size.width * 0.8) *
                  //   //     0.85,
                  // ),

                  Text(
                'این صفحه\nبه زودی\nدر دسترس\nخواهد بود\n:)',
                style:
                    TextStyle(fontSize: 50, color: MainProvider.PrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
