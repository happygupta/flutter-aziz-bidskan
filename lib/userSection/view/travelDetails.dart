import 'package:bidskan/userSection/forms/travelForm.dart';
import 'package:bidskan/utils/constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class TravelDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Travel Details',
          style: GoogleFonts.firaSans(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl:
                          'https://cdn.pixabay.com/photo/2018/01/12/10/19/fantasy-3077928__340.jpg',
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                              child: CircularProgressIndicator(
                                  value: downloadProgress.progress)),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                    Container(
                      decoration: BoxDecoration(color: Colors.black12),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: InkWell(
                  onTap: () {
                    Get.to(TravelForm());
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.orangeAccent,
                          Colors.yellow,
//                      Colors.orangeAccent
                        ]),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.redAccent),
                    child: Center(
                      child: Text(
                        'GET BID',
                        style: GoogleFonts.roboto(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        softWrap: true,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                child: tabs(context),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget tabs(context) {
  return DefaultTabController(
      length: 3,
      child: new Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          flexibleSpace: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              new TabBar(
                isScrollable: true,
                labelStyle: GoogleFonts.roboto(fontSize: 16),
                unselectedLabelColor: Colors.black,
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.orangeAccent,
                      Colors.yellow,
//                      Colors.orangeAccent
                    ]),
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.redAccent),
                tabs: [
                  new Tab(
                    text: 'Trip Plan',
                  ),
                  new Tab(
                    text: 'Terms',
                  ),
                  new Tab(
                    text: 'Things to carry',
                  ),
                ],
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
//             any widget can work very well here <3

          new Container(
            color: Colors.redAccent,
            child: Center(
              child: Text(
                'Trip Plan',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          new Container(
            color: Colors.greenAccent,
            child: Center(
              child: Text(
                'Term & Condition',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          new Container(
            color: Colors.blueAccent,
            child: Center(
              child: Text(
                'Things to carry',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ]),
      ));
}
