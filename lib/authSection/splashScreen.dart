import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:bidskan/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = Get.width / 100;
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: TextLiquidFill(
          boxHeight: Get.height / 2,
          boxWidth: Get.width,
          text: 'BIDSKAN',
          waveColor: Colors.black,
          boxBackgroundColor: primaryColor,
          textStyle: GoogleFonts.montserrat(
            fontSize: 12 * width,
            letterSpacing: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
