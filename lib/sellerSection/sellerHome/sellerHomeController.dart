import 'package:bidskan/authSection/authRoute.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';

class SellerHomeController extends GetxController {
  final box = GetStorage();
  bool switchValue = false, isLoading = true;
  int bidTab = 1;
  var uid;
  final _firebaseStore = FirebaseFirestore.instance;
  @override
  void onInit() {
    init();
    super.onInit();
  }

  Future init() async {
    uid = box.read('UserID');
    switchValue = await _firebaseStore
        .collection('users')
        .doc(uid)
        .get()
        .then((value) => value.data()['SellerLive']);
    if (switchValue.isNull) {
      addSellerLive();
    } else {
      isLoading = false;
      update();
    }
  }

  Future addSellerLive() async {
    await _firebaseStore.collection('users').doc(uid).update({
      'SellerLive': false,
    });

    init();
  }

  // ignore: missing_return
  Future signOut() {
    box.erase();
    FirebaseAuth.instance.signOut();
    Get.offAll(AuthRoute());
  }

  // ignore: missing_return
  Future sellerServiceChange(var value) async {
    isLoading = true;
    update();
    await _firebaseStore.collection('users').doc(uid).update({
      'SellerLive': value,
    });
    init();
  }

  Future bidTabChange(int value) {
    bidTab = value;
    update();
  }
}
