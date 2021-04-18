import 'package:bidskan/utils/spinnerKit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homeController.dart';

class HomeRoute extends StatelessWidget {
  final homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      bool isLoading = controller.isLoading;
      if (!isLoading) {
        return SpinerKit();
      }
      return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blueAccent,
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        controller.updateUser('user');
                      },
                      child: Text(
                        'Login as User ->',
                        style: GoogleFonts.roboto(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Choose Your Profile',
                  style: GoogleFonts.montserrat(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.greenAccent,
                  child: Center(
                    child: InkWell(
                      onTap: () {
                        controller.updateUser('seller');
                      },
                      child: Text(
                        'Login as Seller ->',
                        style: GoogleFonts.roboto(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
