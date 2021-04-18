import 'package:bidskan/authSection/homeRoute.dart';
import 'package:bidskan/sellerSection/sellerForm/sellerForm.dart';
import 'package:bidskan/sellerSection/sellerForm/verifyPage.dart';
import 'package:bidskan/sellerSection/sellerHome/sellerHome.dart';
import 'package:bidskan/utils/spinnerKit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class SellerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final box = GetStorage();
    var profileComplete;
    Future<void> route() async {
      try {
        var uid = box.read('UserID');
        profileComplete = await FirebaseFirestore.instance
            .collection('users')
            .doc(uid)
            .get()
            .then((value) => value.data()['ProfileComplete']);
      } on Exception catch (e) {
        route();
      }
      print('ProfileComplete - ' + profileComplete.toString());
      if (profileComplete == 1) {
        Get.off(HomeRoute());
      }
      if (profileComplete == 2) {
        Get.off(SellerForm());
      }
      if (profileComplete == 3) {
        Get.off(VerifyPage());
      }
      if (profileComplete == 4) {
        Get.off(SellerHome());
      }
    }

    return FutureBuilder(
        future: route(),
        builder: (context, snap) {
          return SpinerKit();
        });
  }
}
