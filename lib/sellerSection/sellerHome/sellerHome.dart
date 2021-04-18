import 'package:bidskan/sellerSection/sellerHome/jobsPage.dart';
import 'package:bidskan/sellerSection/sellerHome/paymentPage.dart';
import 'package:bidskan/sellerSection/sellerHome/profilePage.dart';
import 'package:bidskan/sellerSection/sellerHome/sellerHomeController.dart';
import 'package:bidskan/utils/constant.dart';
import 'package:bidskan/utils/spinnerKit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic/neumorphic.dart';

class SellerHome extends StatelessWidget {
  final sellerHomeController = Get.lazyPut(() => SellerHomeController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SellerHomeController>(builder: (controller) {
      return Scaffold(
          drawer: Drawer(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: primaryColor)),
                      child: Text('Profile Details'),
                      onPressed: () {
                        Get.to(ProfilePage());
                      },
                    ),
                  ),
                  Container(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(color: primaryColor)),
                      child: Text('Logout'),
                      onPressed: () {
                        controller.signOut();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: Text('Seller Home',
                style: GoogleFonts.firaSans(color: Colors.black)),
            centerTitle: true,
          ),
          body: SafeArea(
            child: controller.isLoading
                ? Center(
                    child: SpinerKit(),
                  )
                : Scaffold(
                    body: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 10, right: 10, bottom: 0),
                      child: Column(
                        children: [
                          Container(
                            height: 155,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "I am online",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                      ),
                                    ),
                                    CupertinoSwitch(
                                        value: controller.switchValue,
                                        onChanged: (value) {
                                          controller.sellerServiceChange(value);
                                        }),
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Container(
                                          width: 100,
                                          height: 100,
                                          child: NeuButton(
                                            padding: EdgeInsets.all(8),
                                            decoration: NeumorphicDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(11)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.people,
                                                  size: 45,
                                                  color: primaryColor,
                                                ),
                                                Text('JOBS'),
                                              ],
                                            ),
                                            onPressed: () => Get.to(JobsPage()),
                                          ),
                                        ),
                                        Container(
                                          width: 100,
                                          height: 100,
                                          child: NeuButton(
                                            padding: EdgeInsets.all(8),
                                            decoration: NeumorphicDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(11)),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: <Widget>[
                                                Icon(
                                                  Icons.people,
                                                  size: 45,
                                                  color: primaryColor,
                                                ),
                                                Text('PAYMENTS'),
                                              ],
                                            ),
                                            onPressed: () {
                                              Get.to(PaymentsPage());
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            height: 50,
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Service Notification Area",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                      ),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.filter_list,
                                        color: Color(0xff49DEDE),
                                      ),
                                      onPressed: () {},
                                      iconSize: 25,
                                      splashRadius: 25,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          controller.bidTab == 1
                              ? Expanded(
                                  flex: 3,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    width: MediaQuery.of(context).size.width,
                                    child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: 1 + 9,
                                      itemBuilder: (context, index) {
                                        if (index == 0) {
                                          return Text(
                                            "New Leads",
                                            style: TextStyle(
                                              color: primaryColor,
                                              fontSize: 26,
                                            ),
                                            textAlign: TextAlign.center,
                                          );
                                        }
                                        return Container(
                                          height: 130,
                                          child: Stack(
                                            children: [
                                              Center(
                                                child: Container(
                                                  height: 120,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  child: Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              11.0),
                                                    ),
                                                    elevation: 5.0,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              10, 10, 20, 10),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Mradul Gupta",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        22),
                                                              ),
                                                              Text(
                                                                "Combos, Visa",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .grey,
                                                                    fontSize:
                                                                        14),
                                                              ),
                                                              Text(
                                                                "Serving Date :- 14 Sep, 2020",
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xff49DEDE),
                                                                    fontSize:
                                                                        15),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    height: 70,
                                                                    width: 70,
                                                                    decoration: BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color: Color(
                                                                            0xffFDCF09)),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Text(
                                                                        "BID",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize: 23),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "(1h ago)",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .grey,
                                                                        fontSize:
                                                                            12),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
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
                                                      Icons.cancel,
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
                                        );
                                      },
                                    ),
                                  ),
                                )
                              : Expanded(
                                  flex: 3,
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    width: MediaQuery.of(context).size.width,
                                    child: ListView.builder(
                                      scrollDirection: Axis.vertical,
                                      itemCount: 1 + 9,
                                      itemBuilder: (context, index) {
                                        if (index == 0) {
                                          return Text(
                                            "Bedded Leads",
                                            style: TextStyle(
                                              color: primaryColor,
                                              fontSize: 26,
                                            ),
                                            textAlign: TextAlign.center,
                                          );
                                        }
                                        return Container(
                                          height: 130,
                                          child: Stack(
                                            children: [
                                              Center(
                                                child: Container(
                                                  height: 120,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  child: Card(
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              11.0),
                                                    ),
                                                    elevation: 5.0,
                                                    child: Container(
                                                      padding:
                                                          EdgeInsets.fromLTRB(
                                                              10, 10, 20, 10),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Text(
                                                                "Mradul Gupta",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        22),
                                                              ),
                                                              Text(
                                                                "Combos, Visa",
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .grey,
                                                                    fontSize:
                                                                        14),
                                                              ),
                                                              Text(
                                                                "Serving Date :- 14 Sep, 2020",
                                                                style: TextStyle(
                                                                    color: Color(
                                                                        0xff49DEDE),
                                                                    fontSize:
                                                                        15),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            children: [
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Container(
                                                                    height: 70,
                                                                    width: 70,
                                                                    decoration: BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color: Color(
                                                                            0xffFDCF09)),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Text(
                                                                        "BID",
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize: 23),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    "(1h ago)",
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .grey,
                                                                        fontSize:
                                                                            12),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
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
                                                      Icons.cancel,
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
                                        );
                                      },
                                    ),
                                  ),
                                ),
                          Container(
                            height: 65,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: InkWell(
                                    splashColor: primaryColor,
                                    onTap: () {
                                      controller.bidTabChange(1);
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          Icons.add_circle_outline,
                                          size: 35,
                                          color: controller.bidTab == 1
                                              ? primaryColor
                                              : Colors.black,
                                        ),
                                        Text(
                                          "NEW",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: InkWell(
                                    splashColor: primaryColor,
                                    onTap: () {
                                      controller.bidTabChange(2);
                                    },
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          Icons.add_circle_outline,
                                          size: 35,
                                          color: controller.bidTab == 2
                                              ? primaryColor
                                              : Colors.black,
                                        ),
                                        Text(
                                          "BIDDED",
                                          style: TextStyle(fontSize: 13),
                                        ),
                                      ],
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
          ));
    });
  }
}
