import 'package:flutter/material.dart';

class QuoteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     'Your Quote List',
      //     style:
      //         TextStyle(color: Colors.black, fontSize: 22, letterSpacing: 1.0),
      //   ),
      //   actions: [
      //     Padding(
      //       padding: EdgeInsets.all(8.0),
      //       child: Icon(
      //         Icons.chat,
      //         color: Colors.black,
      //       ),
      //     ),
      //   ],
      // ),
      body: Column(
        children: [
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 5.0,
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Your Quote List',
                style: TextStyle(
                    color: Colors.black, fontSize: 22, letterSpacing: 1.0),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemExtent: 150,
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.all(10),
                    child: Stack(
                      children: [
                        Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            padding: EdgeInsets.only(
                                left: 50, right: 10, top: 10, bottom: 10),
                            height: 135,
                            width: MediaQuery.of(context).size.width * 0.7,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.green,
                                  blurRadius: 5.0,
                                  offset: Offset(2.0, 5.0),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Booking Name",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Service Categories",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  "Service Date",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                                Material(
                                  color: Colors.transparent,
                                  child: InkWell(
                                    splashColor: Color(0xffFDCF09),
                                    onTap: () {},
                                    child: Text(
                                      "Know More",
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 20,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          left: 4,
                          child: Container(
                            height: 110,
                            width: 110,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.green,
                                    blurRadius: 5.0,
                                    offset: Offset(2.0, 5.0),
                                  ),
                                ]),
                            child: ClipOval(
                              child: Material(
                                child: InkWell(
                                  splashColor: Color(0xffFDCF09),
                                  onTap: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "2",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "Bids",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                      Text(
                                        "Received",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
        ],
      ),
    ));
  }
}
