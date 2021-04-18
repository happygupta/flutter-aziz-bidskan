import 'package:flutter/material.dart';

class BookingInformation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Booking Category',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  Text('Expire On  03 Sept, 2020',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      )),
                ],
              ),
            ),
            Container(
              height: 160,
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('ONGOING',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  Text('Jan 17, 2020 7:05PM',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18,
                      )),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Security Code :- C9FEDC3995',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      )),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Customer',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        )),
                    Text('Aziz Vohra',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Coins Earn:',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        )),
                    Text('150',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Amount Paid',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                        )),
                    Text('AED 15.00',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        )),
                  ],
                ),
              ),
            ),
            Container(
              height: 80,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        splashColor: Color(0xffFDCF09),
                        onTap: () {},
                        child: Text(
                          "Need Help?",
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
          ],
        ),
      ),
    );
  }
}
