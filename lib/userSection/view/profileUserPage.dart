import 'package:bidskan/authSection/authRoute.dart';
import 'package:bidskan/utils/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Profile Menu',
            style: GoogleFonts.firaSans(color: Colors.black)),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.power_settings_new, color: Colors.black),
              onPressed: () {
                box.erase();
                FirebaseAuth.instance.signOut();
                Get.offAll(AuthRoute());
              })
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      height: 190,
                      padding: EdgeInsets.all(18),
                      child: Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14),
                              child: CircleAvatar(
                                radius: 55,
                                backgroundColor: primaryColor,
                                child: CircleAvatar(
                                  radius: 50,
                                  backgroundImage: NetworkImage(
                                      'https://cdn.pixabay.com/photo/2016/02/28/04/35/joker-1226504_960_720.jpg'),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.all(15),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      'Hemant Kumar Gupta',
                                      style: GoogleFonts.firaSans(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      'Seller',
                                      style: GoogleFonts.firaSans(
                                          fontSize: 18, color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      child: Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.gavel,
                            color: Colors.black,
                          ),
                          title: Text('My Booking',
                              style: GoogleFonts.firaSans(
                                fontSize: 18,
                              )),
                          trailing: Icon(
                            Icons.arrow_right,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      child: Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.account_balance_wallet,
                            color: Colors.black,
                          ),
                          title: Text('Wallet',
                              style: GoogleFonts.firaSans(
                                fontSize: 18,
                              )),
                          trailing: Icon(
                            Icons.arrow_right,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      child: Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.local_offer,
                            color: Colors.black,
                          ),
                          title: Text('Offers',
                              style: GoogleFonts.firaSans(
                                fontSize: 18,
                              )),
                          trailing: Icon(
                            Icons.arrow_right,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      child: Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.monetization_on,
                            color: Colors.black,
                          ),
                          title: Text('Refer & Earn',
                              style: GoogleFonts.firaSans(
                                fontSize: 18,
                              )),
                          trailing: Icon(
                            Icons.arrow_right,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      child: Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.contact_phone,
                            color: Colors.black,
                          ),
                          title: Text('Contact Us',
                              style: GoogleFonts.firaSans(
                                fontSize: 18,
                              )),
                          trailing: Icon(
                            Icons.arrow_right,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                      child: Card(
                        child: ListTile(
                          leading: Icon(
                            Icons.help,
                            color: Colors.black,
                          ),
                          title: Text('Help',
                              style: GoogleFonts.firaSans(
                                fontSize: 18,
                              )),
                          trailing: Icon(
                            Icons.arrow_right,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'POWER BY',
                      style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    Text(
                      'BIDRIPPER',
                      style: GoogleFonts.montserrat(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
