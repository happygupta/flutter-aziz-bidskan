import 'package:bidskan/sellerSection/sellerHome/jobDescription.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class JobsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
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
                      'UPCOMING',
                      style: TextStyle(color: Colors.black, fontSize: 15.0),
                    ),
                  ),
                ),
                Tab(
                  child: Container(
                    child: Text(
                      'IN PROGRESS',
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
            title: Text("JOBS"),
          ),
          body: TabBarView(
            children: [
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

class MyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemExtent: 140,
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Center(
                    child: Container(
                      height: 130,
                      width: MediaQuery.of(context).size.width,
                      child: InkWell(
                        onTap: () => Get.to(JobDescription()),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(11.0),
                          ),
                          elevation: 5.0,
                          child: Container(
                            padding: EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: NetworkImage(
                                              "https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg"),
                                          fit: BoxFit.fill,
                                        ),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "Mradul Gupta",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Text(
                                      "Combos, Visa",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Text(
                                      "Serving Date :- 14 Sep, 2020",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                    Text(
                                      "Serving Date :- 14 Sep, 2020",
                                      style: TextStyle(fontSize: 14),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
