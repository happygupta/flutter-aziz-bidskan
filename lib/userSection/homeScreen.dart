import 'package:bidskan/userSection/controllers/homeScreenController.dart';
import 'package:bidskan/userSection/forms/homeCleaner.dart';
import 'package:bidskan/userSection/view/bookingPage.dart';
import 'package:bidskan/userSection/view/profileUserPage.dart';
import 'package:bidskan/userSection/view/quoteDetails.dart';
import 'package:bidskan/userSection/view/serviceCart.dart';
import 'package:bidskan/userSection/view/travel.dart';
import 'package:bidskan/utils/constant.dart';
import 'package:bidskan/utils/country.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic/neumorphic.dart';

class HomeScreen extends StatelessWidget {
  final homeScreenController = Get.lazyPut(() => HomeScreenController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeScreenController>(builder: (controller) {
      return Scaffold(
        key: controller.scaffoldKey,
        resizeToAvoidBottomPadding: false,
        drawer: drawer(context),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.sort,
              color: Colors.black,
            ),
            onPressed: () => controller.scaffoldKey.currentState.openDrawer(),
          ),
          title: Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: TextField(
              showCursor: true,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(15),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red, //this has no effect
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  hintText: "Search",
                  suffixIcon: Icon(Icons.search)),
            ),
          ),
          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.live_help,
                  color: Colors.black,
                ),
                onPressed: () {}),
            IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                onPressed: () {
                  Get.to(ServicesCartPage());
                }),
          ],
        ),
        body: (controller.cIndex == 0)
            ? home(context, controller)
            : (controller.cIndex == 1)
                ? quoteList(context, controller)
                : null,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: primaryColor,
          currentIndex: controller.cIndex,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Color.fromARGB(255, 0, 0, 0)),
                title: new Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit, color: Color.fromARGB(255, 0, 0, 0)),
                title: new Text('Bid')),
            BottomNavigationBarItem(
                icon: Opacity(
                    opacity: 0,
                    child: Icon(Icons.widgets,
                        color: Color.fromARGB(255, 0, 0, 0))),
                title: new Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.ac_unit, color: Color.fromARGB(255, 0, 0, 0)),
                title: new Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.power, color: Color.fromARGB(255, 0, 0, 0)),
                title: new Text('Power'))
          ],
          onTap: (index) {
            controller.incrementTab(index);
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: new FloatingActionButton(
          elevation: 0,
          foregroundColor: Colors.black,
          backgroundColor: primaryColor,
          onPressed: () {
            controller.incrementTab(2);
          },
          child: new Icon(Icons.accessibility_new),
        ),
      );
    });
  }
}

Widget drawer(context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        UserAccountsDrawerHeader(
          onDetailsPressed: () {
            Get.back();
            Get.to(Profile());
          },
          accountName: Text("Hemant Kumar Gupta"),
          accountEmail: Text("hapygupta15y@gmail.com"),
          currentAccountPicture: CircleAvatar(
            radius: 35,
            backgroundColor: primaryColor,
            child: CircleAvatar(
              radius: 33,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2016/02/28/04/35/joker-1226504_960_720.jpg'),
            ),
          ),
        ),
        ListTile(
          title: Text("Home"),
          trailing: Icon(Icons.arrow_right),
        ),
        ListTile(
          title: Text("My Profile"),
          trailing: Icon(Icons.arrow_right),
          onTap: () {
            Get.back();
            Get.to(Profile());
          },
        ),
        ListTile(
          title: Text("Booking"),
          trailing: Icon(Icons.arrow_right),
          onTap: () {
            Get.to(BookingPage());
          },
        ),
        ListTile(
          title: Text("Home Cleaner FORM"),
          trailing: Icon(Icons.arrow_right),
          onTap: () {
            Get.to(HomeCleaner());
          },
        ),
        ListTile(
          title: Text("Favorite"),
          trailing: Icon(Icons.arrow_right),
        ),
        ListTile(
          title: Text("Wallet"),
          trailing: Icon(Icons.arrow_right),
        ),
      ],
    ),
  );
}

Widget home(context, controller) {
  return WillPopScope(
    onWillPop: () async => false,
    child: SingleChildScrollView(
      child: Center(
          child: Column(
        children: <Widget>[
          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Carousel(
                boxFit: BoxFit.cover,
                autoplay: true,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 1000),
                dotSize: 6.0,
                dotIncreasedColor: primaryColor,
                dotBgColor: Colors.transparent,
                dotPosition: DotPosition.topRight,
                dotVerticalPadding: 10.0,
                showIndicator: true,
                indicatorBgPadding: 7.0,
                borderRadius: true,
                radius: Radius.circular(30),
                images: [
                  CachedNetworkImage(
                    imageUrl:
                        'https://cdn.wallpapersafari.com/12/90/LSVhuk.jpg',
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                            child: CircularProgressIndicator(
                                value: downloadProgress.progress)),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  CachedNetworkImage(
                    imageUrl:
                        'https://i.pinimg.com/originals/b4/bf/fd/b4bffd4008803a321411fc7ada27be05.jpg',
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                            child: CircularProgressIndicator(
                                value: downloadProgress.progress)),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  CachedNetworkImage(
                    imageUrl:
                        'https://wallpaperplay.com/walls/full/e/e/f/98358.jpg',
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                            child: CircularProgressIndicator(
                                value: downloadProgress.progress)),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                  CachedNetworkImage(
                    imageUrl:
                        'https://learn.zoner.com/wp-content/uploads/2018/08/landscape-photography-at-every-hour-part-ii-photographing-landscapes-in-rain-or-shine.jpg',
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                            child: CircularProgressIndicator(
                                value: downloadProgress.progress)),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Our Services',
                    style: GoogleFonts.firaSans(
                      fontSize: 24,
                    ),
                  ),
                ]),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 24.0,
              runSpacing: 24.0,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  child: NeuButton(
                    padding: EdgeInsets.all(8),
                    decoration: NeumorphicDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.directions_car,
                          size: 45,
                          color: primaryColor,
                        ),
                        Text('Travel'),
                      ],
                    ),
                    onPressed: () {
                      controller.box.read('country') == null
                          ? Country(context, 1)
                          : Get.to(Travel());
                    },
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: NeuButton(
                    padding: EdgeInsets.all(8),
                    decoration: NeumorphicDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.insert_emoticon,
                          size: 45,
                          color: primaryColor,
                        ),
                        Text('Insurance'),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: NeuButton(
                    padding: EdgeInsets.all(8),
                    decoration: NeumorphicDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.people,
                          size: 45,
                          color: primaryColor,
                        ),
                        Text('Happy'),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: NeuButton(
                    padding: EdgeInsets.all(8),
                    decoration: NeumorphicDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.people,
                          size: 45,
                          color: primaryColor,
                        ),
                        Text('Happy'),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: NeuButton(
                    padding: EdgeInsets.all(8),
                    decoration: NeumorphicDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.people,
                          size: 45,
                          color: primaryColor,
                        ),
                        Text('Happy'),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: NeuButton(
                    padding: EdgeInsets.all(8),
                    decoration: NeumorphicDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.people,
                          size: 45,
                          color: primaryColor,
                        ),
                        Text('Happy'),
                      ],
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Recommended for you',
                    style: GoogleFonts.firaSans(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    'See All',
                    style:
                        GoogleFonts.firaSans(fontSize: 12, color: Colors.blue),
                  ),
                ]),
          ),
        ],
      )),
    ),
  );
}

Widget quoteList(context, controller) {
  return Column(
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
                              color: primaryColor,
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
                                onTap: () {
                                  Get.to(QuoteDetails());
                                },
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
                                color: primaryColor,
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
  );
}
