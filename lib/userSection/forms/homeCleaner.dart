import 'dart:async';

import 'package:bidskan/userSection/forms/homeCleaner2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeCleaner extends StatefulWidget {
  @override
  _HomeCleanerState createState() => _HomeCleanerState();
}

class _HomeCleanerState extends State<HomeCleaner> {
  int selectedRadio;
  bool rememberMe = false;

  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
  }

  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }

  void _onRememberMeChanged(bool newValue) => setState(() {
        rememberMe = newValue;

        if (rememberMe) {
          // TODO: Here goes your functionality that remembers the user.
        } else {
          // TODO: Forget the user
        }
      });
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            "What's included ? >",
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("How many cleaner do you need ?",
                                style: MyTextStyle()),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                NewBox('1'),
                                SizedBox(
                                  width: 10,
                                ),
                                NewBox('2'),
                                SizedBox(
                                  width: 10,
                                ),
                                NewBox('3'),
                                SizedBox(
                                  width: 10,
                                ),
                                NewBox('4'),
                                SizedBox(
                                  width: 10,
                                ),
                                NewBox('5'),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("How many hours should they stay ?",
                                style: MyTextStyle()),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                NewBox('1'),
                                SizedBox(
                                  width: 10,
                                ),
                                NewBox('2'),
                                SizedBox(
                                  width: 10,
                                ),
                                NewBox('3'),
                                SizedBox(
                                  width: 10,
                                ),
                                NewBox('4'),
                                SizedBox(
                                  width: 10,
                                ),
                                NewBox('5'),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "How Often do you need cleaning?",
                              style: MyTextStyle(),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 30,
                                  width:
                                      MediaQuery.of(context).size.width * 0.3,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.black),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Center(
                                    child: Text(
                                      'One Time',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  height: 30,
                                  width:
                                      MediaQuery.of(context).size.width * 0.47,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.black),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Center(
                                    child: Text(
                                      'Monthly Subscription',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "How many days you want in a week ?",
                              style: MyTextStyle(),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    NewBox('1'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    NewBox('2'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    NewBox('3'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    NewBox('4'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    NewBox('5'),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    NewBox('6'),
                                    SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    NewBox('Sun'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    NewBox('Mon'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    NewBox('Tue'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    NewBox('Wed'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    NewBox('Thu'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    NewBox('Fri'),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    NewBox('Sat'),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Cleaning Start Date",
                              style: MyTextStyle(),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            DatePic(),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Cleaning Time",
                              style: MyTextStyle(),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TimePic(),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Do you need cleaning materials?",
                              style: MyTextStyle(),
                            ),
                            Row(
                              children: [
                                new Radio(
                                  value: 1,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.black38,
                                  onChanged: (val) {
                                    setSelectedRadio(val);
                                  },
                                ),
                                Text(
                                  "Yes (additional charge apply)",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                new Radio(
                                  value: 2,
                                  groupValue: selectedRadio,
                                  activeColor: Colors.black38,
                                  onChanged: (val) {
                                    setSelectedRadio(val);
                                  },
                                ),
                                Text(
                                  "No",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Do you need additional services?",
                                style: MyTextStyle()),
                            Row(
                              children: [
                                Checkbox(
                                    value: rememberMe,
                                    onChanged: _onRememberMeChanged),
                                Text(
                                  "Ironing",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: rememberMe,
                                    onChanged: _onRememberMeChanged),
                                Text(
                                  "Interior Windows Cleaning",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                    value: rememberMe,
                                    onChanged: _onRememberMeChanged),
                                Text(
                                  "Laundry",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Container(
                  height: 40,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.green, width: 1),
                  ),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(12),
                    splashColor: Color(0xffFDCF09),
                    onTap: () {
                      Get.to(HomeCleaner2());
                    },
                    child: Center(
                      child: Text(
                        "Submit",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}

class NewBox extends StatefulWidget {
  String title;
  NewBox(this.title);
  @override
  _NewBoxState createState() => _NewBoxState();
}

class _NewBoxState extends State<NewBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: MediaQuery.of(context).size.width * 0.12,
      decoration: BoxDecoration(
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: BorderRadius.circular(12)),
      child: Center(
        child: Text(
          widget.title,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class DatePic extends StatefulWidget {
  DatePic({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _DatePicState createState() => _DatePicState();
}

class _DatePicState extends State<DatePic> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => _selectDate(context),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("${selectedDate.toLocal()}".split(' ')[0]),
                Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TimePic extends StatefulWidget {
  TimePic({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TimePicState createState() => _TimePicState();
}

class _TimePicState extends State<TimePic> {
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime)
      setState(() {
        selectedTime = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: InkWell(
          borderRadius: BorderRadius.circular(20),
          onTap: () => _selectTime(context),
          child: Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("${selectedTime.toString()}".split(' ')[0]),
                Icon(
                  Icons.access_time,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyTextStyle extends TextStyle {
  final Color color;
  final FontWeight fontWeight;
  final double size;

  const MyTextStyle({
    this.color = Colors.black,
    this.fontWeight = FontWeight.bold,
    this.size = 16,
  })  : assert(color != null),
        super(
          color: color,
          fontWeight: fontWeight,
          fontSize: size,
        );
}
