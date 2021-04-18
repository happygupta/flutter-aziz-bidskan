import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';

class HomeScreenController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();
  Color color = Color(0xFFf2f2f2);
  int cIndex = 0;
  final box = GetStorage();


  void incrementTab(index) {
    cIndex = index;
    update();
  }
}
