import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JobDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFDCF09),
          title: Text('Job Description'),
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Customer Details",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 22.0),
                                  ),
                                ],
                              ),
                              Container(
                                height: 5,
                                width: MediaQuery.of(context).size.width,
                                color: Color(0xffFDCF09),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Full Name",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Vanessa Chrichlow",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Booking Details",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 22.0),
                                  ),
                                ],
                              ),
                              Container(
                                height: 5,
                                width: MediaQuery.of(context).size.width,
                                color: Color(0xffFDCF09),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Full Name",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Tony Starc",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Center(
                                  child: Column(children: <Widget>[
                                Container(
                                  margin: EdgeInsets.all(10),
                                  child: Table(
                                    border: TableBorder.all(),
                                    children: [
                                      TableRow(children: [
                                        Column(children: [
                                          Icon(
                                            Icons.account_box,
                                            size: 40,
                                          ),
                                          Text('My Account')
                                        ]),
                                        Column(children: [
                                          Icon(
                                            Icons.settings,
                                            size: 40,
                                          ),
                                          Text('Settings')
                                        ]),
                                        Column(children: [
                                          Icon(
                                            Icons.lightbulb_outline,
                                            size: 40,
                                          ),
                                          Text('Ideas')
                                        ]),
                                      ]),
                                      TableRow(children: [
                                        Icon(
                                          Icons.cake,
                                          size: 40,
                                        ),
                                        Icon(
                                          Icons.voice_chat,
                                          size: 40,
                                        ),
                                        Icon(
                                          Icons.add_location,
                                          size: 40,
                                        ),
                                      ]),
                                    ],
                                  ),
                                ),
                              ]))
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Special Instruction",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 22.0),
                                  ),
                                ],
                              ),
                              Container(
                                height: 5,
                                width: MediaQuery.of(context).size.width,
                                color: Color(0xffFDCF09),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Full Name",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Thanos",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 40,
                width: Get.width * 0.6,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      stops: [0.1, 0.5, 0.7, 0.9],
                      colors: [
                        Colors.yellow[800],
                        Colors.yellow[700],
                        Colors.yellow[600],
                        Colors.yellow[400],
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Material(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    splashColor: Color(0xffFDCF09),
                    borderRadius: BorderRadius.circular(12),
                    onTap: () {},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "BID NOW",
                          style: TextStyle(fontSize: 23),
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
    );
  }
}
