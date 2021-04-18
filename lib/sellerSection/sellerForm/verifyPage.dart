import 'package:bidskan/utils/constant.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Verifying Your Account',
            style: GoogleFonts.firaSans(color: Colors.black)),
        centerTitle: true,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Your Profile is Complete. \n Verification Pending.',
              style: GoogleFonts.firaSans(
                  color: Colors.green,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 18,
            ),
            CachedNetworkImage(
              imageUrl:
                  'https://media0.giphy.com/media/AFuvqdSLGoaJGTE7Iy/giphy.gif',
              progressIndicatorBuilder: (context, url, downloadProgress) =>
                  Center(
                      child: CircularProgressIndicator(
                          value: downloadProgress.progress)),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  border: Border.all(width: 3.0, color: Colors.blueAccent),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    '-Important-',
                    style:
                        GoogleFonts.firaSans(fontSize: 22, color: Colors.red),
                  ),
                  Text(
                    'This is msg for the seller. that\'s profile has been verified or not.',
                    style:
                        GoogleFonts.firaSans(fontSize: 18, color: Colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
