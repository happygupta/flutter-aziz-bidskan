import 'package:bidskan/userSection/controllers/travelController.dart';
import 'package:bidskan/userSection/forms/travelForm.dart';
import 'package:bidskan/userSection/view/serviceCart.dart';
import 'package:bidskan/userSection/view/travelDetails.dart';
import 'package:bidskan/utils/constant.dart';
import 'package:bidskan/utils/country.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Travel extends StatelessWidget {
  final homeScreenController = Get.put(TravelController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Travel',
          style: GoogleFonts.firaSans(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.black,
              ),
              onPressed: () {
                Get.to(ServicesCartPage());
              })
        ],
      ),
      body: GetBuilder<TravelController>(builder: (controller) {
        controller.onInit();
        return SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(8),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50.0,
                  child: GestureDetector(
                    onTap: () => Country(context, 2),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF05A22),
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(
                              "Country : " + controller.country,
                              style: TextStyle(
                                color: Color(0xFFF05A22),
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'COMBO PACK',
                        style: GoogleFonts.firaSans(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'See All',
                        style: GoogleFonts.firaSans(
                            fontSize: 14, color: Colors.blue),
                      ),
                    ]),
                listShow(context),
                SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'EXCURSION',
                        style: GoogleFonts.firaSans(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'See All',
                        style: GoogleFonts.firaSans(
                            fontSize: 14, color: Colors.blue),
                      ),
                    ]),
                listShow(context),
                SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'VISA',
                        style: GoogleFonts.firaSans(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'See All',
                        style: GoogleFonts.firaSans(
                            fontSize: 14, color: Colors.blue),
                      ),
                    ]),
                listShow(context),
                SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'TICKETS',
                        style: GoogleFonts.firaSans(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'See All',
                        style: GoogleFonts.firaSans(
                            fontSize: 14, color: Colors.blue),
                      ),
                    ]),
                listShow(context),
                SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'PACKAGES',
                        style: GoogleFonts.firaSans(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'See All',
                        style: GoogleFonts.firaSans(
                            fontSize: 14, color: Colors.blue),
                      ),
                    ]),
                listShow(context),
                SizedBox(
                  height: 20,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        'OUR TRANSPORT',
                        style: GoogleFonts.firaSans(
                          fontSize: 24,
                        ),
                      ),
                      Text(
                        'See All',
                        style: GoogleFonts.firaSans(
                            fontSize: 14, color: Colors.blue),
                      ),
                    ]),
                listShow(context),
              ],
            ),
          ),
        );
      }),
    );
  }
}

Widget listShow(context) {
  return Container(
    height: height * 24,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemExtent: width * 69,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: InkWell(
                onTap: () {
                  Get.to(TravelDetails());
                },
                child: Material(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  shadowColor: Color(0xcc000000),
                  elevation: 7,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              'https://cdn.pixabay.com/photo/2018/01/12/10/19/fantasy-3077928__340.jpg',
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(13),
                              image: DecorationImage(
                                  image: imageProvider, fit: BoxFit.cover),
                            ),
                          ),
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) => Center(
                                  child: CircularProgressIndicator(
                                      value: downloadProgress.progress)),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                      Expanded(
                          flex: 1,
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'Happy',
                                  style: GoogleFonts.firaSans(fontSize: 18),
                                ),
                                Text(
                                  'Working with Us',
                                  style: GoogleFonts.firaSans(fontSize: 14),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SizedBox(
                  width: 2,
                ),
                Container(
                  height: height * 19,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: InkWell(
                      onTap: () {
                        Get.to(TravelForm());
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.45),
                                blurRadius: 20,
                                offset: Offset(10, 10))
                          ],
                        ),
                        child: CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl:
                              'https://www.sullivanauctioneers.com/wp-content/uploads/2017/09/bid-now-298x300.png',
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: imageProvider, fit: BoxFit.cover),
                            ),
                          ),
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) => Center(
                                  child: CircularProgressIndicator(
                                      value: downloadProgress.progress)),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    ),
  );
}
