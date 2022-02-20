// // ignore_for_file: prefer_typing_uninitialized_variables

// import 'package:flutter/material.dart'; //ForTest
// import 'package:persian_datetimepickers/persian_datetimepickers.dart';
// // import 'package:persian_calendar/persian_calendar.dart';
// import 'package:persian_flutter/persian_flutter.dart';
// import  'package:persian_datetime_picker/persian_datetime_picker.dart';

// class ForTest extends StatefulWidget {
//   const ForTest({ Key? key }) : super(key: key);

//   @override
//   _ForTestState createState() => _ForTestState();
// }

// class _ForTestState extends State<ForTest> {
  
//   @override
//   Widget build(BuildContext context) {
    
// /////////////////////////Example 1////////////////////////////
// Jalali picked = await showPersianDatePicker(
//     context: context,
//     initialDate: Jalali.now(),
//     firstDate: Jalali(1385, 8),
//     lastDate: Jalali(1450, 9),
// );
// var label = picked.formatFullDate();
// /////////////////////////Example 2////////////////////////////
// var picked = await showTimePicker(
//   context: context,
//   initialTime: TimeOfDay.now(),
// );
// var label = picked.persianFormat(context);
// /////////////////////////Example 3////////////////////////////
//   Jalali pickedDate = await showModalBottomSheet<Jalali>(
//     context: context,
//     builder: (context) {
//       Jalali tempPickedDate;
//       return Container(
//         height: 250,
//         child: Column(
//           children: <Widget>[
//             Container(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   CupertinoButton(
//                     child: Text(
//                       'لغو',
//                       style: TextStyle(
//                         fontFamily: 'Dana',
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                     },
//                   ),
//                   CupertinoButton(
//                     child: Text(
//                       'تایید',
//                       style: TextStyle(
//                         fontFamily: 'Dana',
//                       ),
//                     ),
//                     onPressed: () {
//                       Navigator.of(context).pop(tempPickedDate ?? Jalali.now());
//                     },
//                   ),
//                 ],
//               ),
//             ),
//             Divider(
//               height: 0,
//               thickness: 1,
//             ),
//             Expanded(
//               child: Container(
//                 child: CupertinoTheme(
//                   data: CupertinoThemeData(
//                     textTheme: CupertinoTextThemeData(
//                       dateTimePickerTextStyle: TextStyle(fontFamily: "Dana"),
//                     ),
//                   ),
//                   child: PCupertinoDatePicker(
//                     mode: PCupertinoDatePickerMode.dateAndTime,
//                     onDateTimeChanged: (Jalali dateTime) {
//                       tempPickedDate = dateTime;
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       );
//     },
//   );
  
//  /////////////////////////Example 4//////////////////////////// 
// var picked = await showPersianDateRangePicker(
//     context: context,
//     initialEntryMode: PDatePickerEntryMode.input,
//     initialDateRange: JalaliRange(
//       start: Jalali(1400, 1, 2),
//       end: Jalali(1400, 1, 10),
//     ),
//     firstDate: Jalali(1385, 8),
//     lastDate: Jalali(1450, 9),
//   );
//     return Container(
      
//     );
//   }
// }