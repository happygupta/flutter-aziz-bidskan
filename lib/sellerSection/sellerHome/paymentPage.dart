import 'package:bidskan/sellerSection/sellerHome/sellerHomeController.dart';
import 'package:bidskan/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PaymentsPage extends StatelessWidget {
  final controller = Get.find<SellerHomeController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Payment Page'),
          backgroundColor: primaryColor,
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Seller Profile Name",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Wallet Balance",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "23.",
                        style: TextStyle(
                          color: Color(0xff7772FF),
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "43 dh",
                        style: TextStyle(
                          color: Color(0xff7772FF),
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total Your Earn",
                        style: TextStyle(
                          color: Color(0xff159D1E),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "3024.43 dh",
                        style: TextStyle(
                          color: Color(0xff159D1E),
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: Color(0xff707070),
                    width: 1,
                  ),
                  bottom: BorderSide(
                    color: Color(0xff707070),
                    width: 1,
                  ),
                ),
                color: primaryColor,
              ),
              child: Center(
                child: Text(
                  "Wallet History",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 31,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemExtent: 90,
                  itemCount: 9,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        height: 80,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Cr. 2303 dh",
                                  style: TextStyle(
                                      color: Color(0xff159D1E), fontSize: 15),
                                ),
                                Text(
                                  "Completed",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ],
                            ),
                            Text(
                              "Payment Send in your bank account",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 15),
                            ),
                            Text(
                              "14 Sept, 2020",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
