import 'package:flutter/material.dart';

import 'homeCleaner.dart';

class HomeCleaner2 extends StatefulWidget {
  @override
  _HomeCleaner2State createState() => _HomeCleaner2State();
}

class _HomeCleaner2State extends State<HomeCleaner2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Text(
                        "Select Address",
                        style: MyTextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: TextFormField(
                          cursorColor: Colors.black,
                          maxLines: null,
                          decoration: new InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding: EdgeInsets.only(
                                  left: 15, bottom: 11, top: 11, right: 15),
                              hintText: "Input Address"),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "What is the type of the unit you want move?",
                        style: MyTextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Material(
                                  child: InkWell(
                                    splashColor: Color(0xffFDCF09),
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Appartment",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            VerticalDivider(
                              color: Colors.black,
                            ),
                            Expanded(
                              child: Container(
                                child: Material(
                                  child: InkWell(
                                    splashColor: Color(0xffFDCF09),
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Villa",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            VerticalDivider(
                              color: Colors.black,
                            ),
                            Expanded(
                              child: Container(
                                child: Material(
                                  child: InkWell(
                                    splashColor: Color(0xffFDCF09),
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Office",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "What is the size of your home ?",
                        style: MyTextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: Material(
                                  child: InkWell(
                                    splashColor: Color(0xffFDCF09),
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Studio",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            VerticalDivider(
                              color: Colors.black,
                            ),
                            Expanded(
                              child: Container(
                                child: Material(
                                  child: InkWell(
                                    splashColor: Color(0xffFDCF09),
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "1 BR",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            VerticalDivider(
                              color: Colors.black,
                            ),
                            Expanded(
                              child: Container(
                                child: Material(
                                  child: InkWell(
                                    splashColor: Color(0xffFDCF09),
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "2 BR",
                                          style: TextStyle(fontSize: 16),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Moving start date",
                        style: MyTextStyle(),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      DatePic()
                    ],
                  ),
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
                  onTap: () {},
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
    ));
  }
}
