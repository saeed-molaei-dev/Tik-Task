// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
// import 'package:persian_datetimepickers/persian_datetimepickers.dart';

class PersianDatePickersExample extends StatefulWidget {
  // const PersianDatePickersExample({Key? key}) : super(key: key);

  @override
  _PersianDatePickersExampleState createState() =>
      _PersianDatePickersExampleState();
}

class _PersianDatePickersExampleState extends State<PersianDatePickersExample> {
  TimeOfDay? _pickedTime;
  DateTime? _pickedDate;
  final PageController controller1 = PageController(initialPage: 0);
  PageController _controller = PageController(
    initialPage: 0,
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    PageController _controller = PageController(
      initialPage: 0,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pickers')),
      body: Column(
        children: [
          PageView(
            controller: _controller,
            children: [
              Center(
                child: Text('First Page'),
              ),
              Center(
                child: Text('Second Page'),
              ),
              Center(
                child: Text('Third Page'),
              ),
              ListTile(
                title: Text('Picked time:'),
                // trailing: _pickedTime == null
                //     ? null
                //     : Text(_pickedTime!.toFancyString()),
                onTap: () async {
                  // final TimeOfDay? time = await showPersianTimePicker(
                  //   context: context,
                  // );
                  setState(() {
                    // _pickedTime = time;
                  });
                },
              ),
              const SizedBox(height: 16),
              ListTile(
                title: _pickedDate == null
                    ? Text('Pick a date')
                    : Text('Picked date:'),
                // trailing: _pickedDate == null
                    // ? null
                    // : Text(
                        // _pickedDate!.toFancyString(),
                      // ),
                onTap: () async {
                  // final DateTime? date = await showPersianDatePicker(
                  //   context: context,
                  //   color: Colors.red,
                  // );
                  setState(() {
                    // _pickedDate = date;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
