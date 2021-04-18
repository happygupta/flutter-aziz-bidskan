import 'package:bidskan/sellerSection/SellerScreenRoute.dart';
import 'package:bidskan/userSection/homeScreen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';

class HomeController extends GetxController {
  String username = '';
  bool isLoading = false;
  User currentUser = FirebaseAuth.instance.currentUser;
  final box = GetStorage();

  @override
  void onInit() {
    checkUser();
    super.onInit();
  }

  setUser() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser.uid)
        .set({
      'UserUID': currentUser.uid,
      'MobileNo': '1234567890',
      'ProfileComplete': 1,
    });
    isLoading = true;
    update();
  }

  Future<void> updateUser(String data) async {
    isLoading = false;
    update();
    await FirebaseFirestore.instance
        .collection('users')
        .doc(currentUser.uid)
        .update({
      'ProfileType': data,
      'ProfileComplete': 2,
    });
    if (data == 'user') {
      Get.off(HomeScreen());
    }
    if (data == 'seller') {
      Get.off(SellerScreen());
    }
  }

  Future checkUser() async {
    print('1');
    try {
      box.write('UserID', currentUser.uid);
      print(currentUser.uid);
      username = await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser.uid)
          .get()
          .then((value) => value.data()['ProfileType'])
          .catchError((_) {
        if (username.isNull) {
          setUser();
        }
      });
    } on Exception catch (e) {
      username = 'null';
    }
    print(username);
    if (username.isNull) {
      setUser();
    }
    if (username == 'user') {
      Get.off(HomeScreen());
    }
    if (username == 'seller') {
      Get.off(SellerScreen());
    }
  }
}
