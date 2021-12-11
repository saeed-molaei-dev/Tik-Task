// ignore_for_file: file_names, unused_import, prefer_const_constructors, unnecessary_new, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:round_2_start/Provider/MainProvider.dart';

/*CustomButton*/
class CustomButton extends StatelessWidget {
  final String title;
  final void Function() onPressed;
  final Color color;
  final Color textColor;

  CustomButton(
      {required this.title,
      required this.onPressed,
      required this.color,
      required this.textColor});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
        width: 160,
        height: 50,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(color),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                        side: BorderSide(color: color)))),
            onPressed: () => onPressed(),
            child: Text(
              title,
              style: TextStyle(color: textColor),
            )),
      ),
    ]);
  }
}

/*CustomCheckBox*/
class CustomCheckBox extends StatefulWidget {
  final String title;
  final void Function() onPressed;
  final Color color;
  final Color textColor;

  CustomCheckBox(
      {required this.title,
      required this.onPressed,
      required this.color,
      required this.textColor});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox>
    with SingleTickerProviderStateMixin {
  bool CheckBoxValue = true;

  @override
  void initState() {
    super.initState();
    CheckBoxValue = true;
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      SizedBox(
        width: 160,
        height: 50,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(widget.color),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                        side: BorderSide(color: widget.color)))),
            onPressed: () => widget.onPressed(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                      color: 1 == true && 2 == true
                          ? MainProvider.WhiteColor
                          : MainProvider.PrimaryColor),
                ),
                Checkbox(
                  activeColor: MainProvider.PrimaryColor,
                  value: CheckBoxValue,
                  onChanged: (bool? valueE) {
                    setState(() {
                      CheckBoxValue = valueE!;
                      print(valueE);
                    });
                  },
                ),
              ],
            )),
      ),
    ]);
  }
}

/*LoadingModal*/
class LoadingModal {
  static void show(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      builder: (context) => new AlertDialog(
        content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 5.0,
                  valueColor:
                      AlwaysStoppedAnimation<Color>(MainProvider.PrimaryColor),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                'لطفا کمی منتظر بمانید\nدر حال ارتباط با سرور',
                style: TextStyle(color: MainProvider.PrimaryColor),
              ),
            ]),
      ),
      context: context,
    );
  }
}

/*ShowActivityModal*/
class ShowActivityModal {
  final String TitleActivityModal;
  final String DescriptionActivityModal;
  final void Function() onPressed;

  ShowActivityModal(
      {required this.TitleActivityModal,
      required this.DescriptionActivityModal,
      required this.onPressed});
  void show(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      builder: (context) => new AlertDialog(
        content: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'عنوان: ' + TitleActivityModal.toString(),
                      style: TextStyle(color: MainProvider.PrimaryColor),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  color: MainProvider.PrimaryColor,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'توضیحات: ' + DescriptionActivityModal.toString(),
                  style: TextStyle(color: MainProvider.PrimaryColor),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'توضیحات: ' + DescriptionActivityModal.toString(),
                  style: TextStyle(color: MainProvider.PrimaryColor),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      title: 'تایید',
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      color: MainProvider.PrimaryColor,
                      textColor: MainProvider.WhiteColor,
                    ),
                  ],
                ),
              ]),
        ),
      ),
      context: context,
    );
  }
}

/*DrawerItems*/
class DrawerItems extends StatefulWidget {
  bool enabledItem = true;
  var leadingItem = Icons.info;
  String textItem = '';
  final void Function() onTapItem;
  DrawerItems(
      {required this.enabledItem,
      required this.leadingItem,
      required this.textItem,
      required this.onTapItem});
  @override
  _DrawerItemsState createState() => _DrawerItemsState();
}

class _DrawerItemsState extends State<DrawerItems> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        enabled: widget.enabledItem,
        title: Text(
          widget.textItem,
          style: TextStyle(
              color: widget.enabledItem == true
                  ? MainProvider.PrimaryColor
                  : MainProvider.LightColor),
        ),
        leading: Icon(
          widget.leadingItem,
          color: widget.enabledItem == true
              ? MainProvider.PrimaryColor
              : MainProvider.LightColor,
        ),
        onTap: () => widget.onTapItem());
  }
}
