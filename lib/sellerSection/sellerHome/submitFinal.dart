import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SubmitFinal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffFDCF09),
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
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(15),
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
                              Text(
                                "Please enter your quote",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Center(
                                child: Container(
                                  height: 50,
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                  ),
                                  child: Row(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.15,
                                        child: Center(
                                          child: Text(
                                            "AED",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                      VerticalDivider(
                                        color: Colors.black,
                                      ),
                                      Container(
                                        height: 50,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.55,
                                        child: TextFormField(
                                          cursorColor: Colors.black,
                                          decoration: new InputDecoration(
                                              border: InputBorder.none,
                                              focusedBorder: InputBorder.none,
                                              enabledBorder: InputBorder.none,
                                              errorBorder: InputBorder.none,
                                              disabledBorder: InputBorder.none,
                                              contentPadding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 11,
                                                  top: 11,
                                                  right: 15),
                                              hintText: "Type Your quote here"),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "services charges are included in your quote + 2.3%",
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15.0),
                                  ),
                                  Text(
                                    "TOTAL PRICE :- 254 DH",
                                    overflow: TextOverflow.fade,
                                    maxLines: 2,
                                    softWrap: true,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.bold,
                                    ),
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
                              Text(
                                "Booking Details",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Packing / Unpacking",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17.0),
                                  ),
                                  CupertinoSwitch(
                                      value: null, onChanged: (value) {}),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Packing / Unpacking",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17.0),
                                  ),
                                  CupertinoSwitch(
                                      value: null, onChanged: (value) {}),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Packing / Unpacking",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17.0),
                                  ),
                                  CupertinoSwitch(
                                      value: null, onChanged: (value) {}),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Packing / Unpacking",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17.0),
                                  ),
                                  CupertinoSwitch(
                                      value: null, onChanged: (value) {}),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Packing / Unpacking",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17.0),
                                  ),
                                  CupertinoSwitch(
                                      value: null, onChanged: (value) {}),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Packing / Unpacking",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17.0),
                                  ),
                                  CupertinoSwitch(
                                      value: null, onChanged: (value) {}),
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Packing / Unpacking",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 17.0),
                                  ),
                                  CupertinoSwitch(
                                      value: null, onChanged: (value) {}),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
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
                                    "Add Special Services: ",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                height: 100,
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
                                          left: 15,
                                          bottom: 11,
                                          top: 11,
                                          right: 15),
                                      hintText: "Type here"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
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
                                    "Cancellation",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                "Refundable",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17.0),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "(before 2 days)",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10.0),
                                              ),
                                            ],
                                          ),
                                          new Radio(
                                            value: 0,
                                            groupValue: 1,
                                            activeColor: Colors.black38,
                                            onChanged: (val) {},
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                "Refundable",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17.0),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "(before 5 days)",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10.0),
                                              ),
                                            ],
                                          ),
                                          new Radio(
                                            value: 0,
                                            groupValue: 1,
                                            activeColor: Colors.black38,
                                            onChanged: (val) {},
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                "Refundable",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17.0),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "(before 10 days)",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10.0),
                                              ),
                                            ],
                                          ),
                                          new Radio(
                                            value: 0,
                                            groupValue: 1,
                                            activeColor: Colors.black38,
                                            onChanged: (val) {},
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                "Non Refundable",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 17.0),
                                              ),
                                            ],
                                          ),
                                          new Radio(
                                            value: 1,
                                            groupValue: 1,
                                            activeColor: Colors.black38,
                                            onChanged: (val) {},
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 15,
                                      ),
                                    ],
                                  )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AddPicsButton(),
                                  AddPicsButton(),
                                  AddPicsButton(),
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
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  stops: [0.1, 0.5, 0.7, 0.9],
                  colors: [
                    Colors.yellow[800],
                    Colors.yellow[700],
                    Colors.yellow[600],
                    Colors.yellow[400],
                  ],
                ),
              ),
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
                        "SUBMIT QUOTE",
                        style: TextStyle(fontSize: 23),
                      ),
                    ],
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

class AddPicsButton extends StatefulWidget {
  @override
  _AddPicsButtonState createState() => _AddPicsButtonState();
}

class _AddPicsButtonState extends State<AddPicsButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 90,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
          width: 1,
        ),
      ),
      child: Material(
        child: InkWell(
          splashColor: Color(0xffFDCF09),
          onTap: () {},
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.add,
                size: 25,
              ),
              Text(
                "Add photos",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
