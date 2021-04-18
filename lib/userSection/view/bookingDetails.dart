import 'package:bidskan/userSection/view/bookingInformation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VoucherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey[200],
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            height: 280,
                            width: MediaQuery.of(context).size.width,
                          ),
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/a.png'),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Positioned(
                              bottom: 10,
                              right: -1,
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.75,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                  ),
                                  elevation: 5.0,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 30,
                                        bottom: 10,
                                        right: 30),
                                    child: Column(
                                      children: [
                                        Text(
                                          "Booking Categories",
                                          style: TextStyle(fontSize: 17),
                                        ),
                                        Divider(
                                          color: Colors.black,
                                        ),
                                        Text(
                                          "Date",
                                          style: TextStyle(fontSize: 17),
                                        ),
                                        Divider(
                                          color: Colors.black,
                                        ),
                                        InkWell(
                                          onTap: () {
                                            Get.to(BookingInformation());
                                          },
                                          child: Container(
                                            height: 40,
                                            padding: EdgeInsets.all(5),
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              border: Border.all(
                                                  color: Colors.green,
                                                  width: 1),
                                            ),
                                            child: Center(
                                              child: Text(
                                                "Get Voucher",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 17,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ))
                        ],
                      ),
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          child: Material(
                            color: Colors.grey[100],
                            child: InkWell(
                              splashColor: Color(0xffFDCF09),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Things You Should Know',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 18,
                                        )),
                                    Icon(
                                      Icons.navigate_next,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          child: Material(
                            color: Colors.white,
                            child: InkWell(
                              splashColor: Color(0xffFDCF09),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 15.0, right: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Instructions to Redeem',
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 18,
                                            )),
                                        Icon(
                                          Icons.navigate_next,
                                          color: Colors.grey,
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text('No Booking required',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold)),
                                    Text(
                                        'Appointments not required. Voucher must be presented upon arrival.',
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 11,
                                        )),
                                  ],
                                ),
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
          Container(
            width: MediaQuery.of(context).size.width,
            child: Material(
              child: InkWell(
                splashColor: Color(0xffFDCF09),
                onTap: () {
                  Get.to(BookingInformation());
                },
                child: Center(
                  child: Container(
                    height: 40,
                    width: 250,
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.green, width: 1),
                    ),
                    child: Center(
                      child: Text(
                        "Get Voucher",
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
          ),
        ],
      ),
    ));
  }
}
