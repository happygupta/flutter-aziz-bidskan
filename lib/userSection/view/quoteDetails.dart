import 'package:flutter/material.dart';

class QuoteDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 160,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11.0),
                            ),
                            elevation: 5.0,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Your Services",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                    ),
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
                                            "Service Categories",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            "Service List",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            "Service Date",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Text(
                                            "2",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            "Bids Received",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Center(
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        splashColor: Color(0xffFDCF09),
                                        onTap: () {},
                                        child: Text(
                                          "Get Details of Your Service >>",
                                          style: TextStyle(
                                            color: Colors.blue,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 380,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11.0),
                            ),
                            elevation: 5.0,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  width: 100,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                        image: AssetImage(
                                                            'assets/a.png'),
                                                        fit: BoxFit.fill,
                                                      ),
                                                      color: Colors.black,
                                                      shape: BoxShape.circle),
                                                ),
                                                Material(
                                                  color: Colors.transparent,
                                                  child: InkWell(
                                                    splashColor:
                                                        Color(0xffFDCF09),
                                                    onTap: () {},
                                                    child: Text(
                                                      "Profile",
                                                      style: TextStyle(
                                                        color: Colors.blue,
                                                        fontSize: 16,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Seller Name",
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                  ),
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          color: Colors
                                                              .yellow[400],
                                                          child: Text(
                                                            "5.7",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                        Container(
                                                          color: Colors
                                                              .yellow[400],
                                                          child: Text(
                                                            "14",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 15,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      children: [
                                                        SizedBox(
                                                          width: 15,
                                                        ),
                                                      ],
                                                    ),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Material(
                                                          color: Colors
                                                              .transparent,
                                                          child: InkWell(
                                                            splashColor: Color(
                                                                0xffFDCF09),
                                                            onTap: () {},
                                                            child: Text(
                                                              "View Reviews >>",
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.blue,
                                                                fontSize: 16,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "No of Bookings",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontSize: 15,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      Positioned(
                                        top: -10,
                                        right: -10,
                                        child: Material(
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          color: Colors.transparent,
                                          child: IconButton(
                                            icon: Icon(
                                              Icons.add_circle_outline,
                                              color: Colors.black,
                                            ),
                                            onPressed: () {},
                                            iconSize: 25,
                                            splashRadius: 15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    height: 150,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Text(
                                              "AED 163",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 25,
                                              ),
                                            ),
                                            Text(
                                              "Additional Services....",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                              ),
                                            ),
                                            Text(
                                              "Type Of Cancellation",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            Container(
                                              height: 130,
                                              width: 130,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.black,
                                                  width: 1,
                                                ),
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                      'assets/a.png'),
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Material(
                                        color: Colors.transparent,
                                        child: InkWell(
                                          splashColor: Color(0xffFDCF09),
                                          onTap: () {},
                                          child: Text(
                                            "Term & Conditions..",
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 40,
                                        padding: EdgeInsets.all(5),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          border: Border.all(
                                              color: Colors.green, width: 1),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "Accept & Pay",
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 20,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
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
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      splashColor: Color(0xffFDCF09),
                      onTap: () {},
                      child: Text(
                        "Sort",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.blue,
                    ),
                    InkWell(
                      splashColor: Color(0xffFDCF09),
                      onTap: () {},
                      child: Text(
                        "Filter",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    VerticalDivider(
                      color: Colors.blue,
                    ),
                    InkWell(
                      splashColor: Color(0xffFDCF09),
                      onTap: () {},
                      child: Text(
                        "Favourite",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
