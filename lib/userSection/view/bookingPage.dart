import 'package:bidskan/userSection/view/bookingDetails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookingPage extends StatefulWidget {
  final Widget child;

  BookingPage({Key key, this.child}) : super(key: key);

  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xffFDCF09),
            //backgroundColor: Color(0xff308e1c),
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              tabs: [
                Tab(
                  child: Container(
                    child: Text(
                      'ALL',
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'UPCOMING',
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'PENDING',
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'COMPLETED',
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'CANCELLED',
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                  ),
                ),
              ],
            ),
            title: Text("Booking"),
          ),
          body: TabBarView(
            children: [
              MyTab(),
              MyTab(),
              MyTab(),
              MyTab(),
              MyTab(),
            ],
          ),
        ),
      ),
    );
  }
}

class MyTab extends StatefulWidget {
  @override
  _MyTabState createState() => _MyTabState();
}

class _MyTabState extends State<MyTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Color(0xffFDCF09),
                  onTap: () {},
                  child: Text(
                    "Booking Category",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Material(
                borderRadius: BorderRadius.circular(4),
                color: Colors.transparent,
                child: IconButton(
                  icon: Icon(
                    Icons.filter_list,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                  iconSize: 25,
                  splashRadius: 15,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemExtent: 220,
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Center(
                    child: Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        elevation: 5.0,
                        child: Container(
                          child: Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        bottomLeft: Radius.circular(20)),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOTYjXzZOZSipY5BQK7TQtTIVjM1YLwHPnMA&usqp=CAU'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                        alignment: Alignment.topRight,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Container(
                                              height: 12,
                                              width: 12,
                                              decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.green),
                                            ),
                                            SizedBox(
                                              width: 15,
                                            ),
                                            Text(
                                              "Verification Pending",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Booking Category",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            "Service Date",
                                            style: TextStyle(fontSize: 15),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            child: InkWell(
                                              splashColor: Color(0xffFDCF09),
                                              onTap: () {},
                                              child: Text(
                                                "Cancel Booking",
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 16,
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Material(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            child: InkWell(
                                              splashColor: Color(0xffFDCF09),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                              onTap: () {
                                                Get.to(VoucherPage());
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
                                                    "Download",
                                                    style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 20,
                                                    ),
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
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
