import 'dart:io';

import 'package:bidskan/sellerSection/sellerForm/addDetailsForm.dart';
import 'package:bidskan/sellerSection/sellerForm/verifyPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:image_picker/image_picker.dart';

class SellerFormController extends GetxController {
  bool com1 = true,
      com2 = true,
      com3 = true,
      com4 = true,
      com5 = true,
      term = false,
      imgUpload = false,
      isUpdateData = false;
  File image;
  final picker = ImagePicker();
  String category = 'Select Seller Category', emirate = 'Select Emirate', path;
  var phoneCode, phone, phoneCountry, subCategory, serviceCountry;
  File vat, trade;
  bool vatSelect = false, tradeSelect = false;
  final box = GetStorage();
  FirebaseFirestore _fireStore = FirebaseFirestore.instance;

  Future<void> uploadFile(File file) async {
    StorageReference imageUpload;
    final uuid = box.read('UserID');
    imageUpload = FirebaseStorage.instance
        .ref()
        .child('UsersDetail/$uuid/SellerFormInfo/Profile_$uuid.jpg');
    final StorageUploadTask uploadTask = imageUpload.putFile(file);
    final StorageTaskSnapshot downloadUrl = await uploadTask.onComplete;
    final String url = await downloadUrl.ref.getDownloadURL();
    box.write('ProfileImageUrl', url);
    print(url);
    imgUpload = false;
    update();
  }

  Future getImage(int i) async {
    if (i == 2) {
      try {
        final pickedFile = await picker.getImage(
            source: ImageSource.gallery, imageQuality: 30);

        image = File(pickedFile.path);
        imgUpload = true;
        uploadFile(image);
      } on Exception catch (e) {
        // TODO
      }
    }
    if (i == 1) {
      try {
        final pickedFile =
            await picker.getImage(source: ImageSource.camera, imageQuality: 30);

        image = File(pickedFile.path);
        imgUpload = true;
        uploadFile(image);
      } on Exception catch (e) {
        // TODO
      }
    }
    update();
  }

  Future<void> saveData() async {
    try {
      final uid = box.read('UserID');
      print(uid);
      await _fireStore.collection('users').doc(uid).update({
        'ProfileComplete': 3,
        'msg': null,
        'profileImageUrl': box.read('profileImageUrl'),
        'tradeImageUrl': box.read('tradeImageUrl'),
        'vatImageUrl': box.read('vatImageUrl'),
        'FirstName': box.read('fName'),
        'LastName': box.read('lName'),
        'person_country_code': box.read('per_Country_code'),
        'person_country_name': box.read('per_Country_Name'),
        'person_Number': box.read('per_number'),
        'person_email': box.read('per_email'),
        'seller_category': box.read('seller_category'),
        'seller_services': box.read('seller_services'),
        'company_name': box.read('company_name'),
        'company_address': box.read('company_address'),
        'manager_name': box.read('manager_name'),
        'manager_number': box.read('manager_number'),
        'team_name': box.read('team_name'),
        'team_number': box.read('team_number'),
        'ladline_number': box.read('ladline_number'),
        'company_email': box.read('company_email'),
        'vat_number': box.read('vat_number'),
        'service_country': box.read('service_country'),
        'services_area': box.read('services_area'),
        'bank_holder_name': box.read('bank_holder_name'),
        'bank_account_number': box.read('bank_account_number'),
        'bank_iban_number': box.read('bank_iban_number'),
        'bank_swift_number': box.read('bank_swift_number'),
        'bank_name': box.read('bank_name'),
      });

      isUpdateData = false;
      Get.off(VerifyPage());
    } on Exception catch (e) {
      print(e);
      isUpdateData = false;
//        Fluttertoast.showToast(msg: 'Check Your Internet Connection');

      // TODO
    }
    update();
  }

  Future<void> onTapMethod() async {
    try {
      var navigationResult = await Get.to(AddFormDetails());

      if (navigationResult == 1) {
        com1 = false;
      }
      if (navigationResult == 2) {
        com2 = false;
      }
      if (navigationResult == 3) {
        com3 = false;
      }
      if (navigationResult == 4) {
        com4 = false;
      }
      if (navigationResult == 5) {
        com5 = false;
      }
    } on Exception catch (e) {
//      Fluttertoast.showToast(
//          msg: 'Submit Details To Verified $e',
//          toastLength: Toast.LENGTH_SHORT);
    }
    update();
  }

  bool validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    return (!regex.hasMatch(value)) ? false : true;
  }

  Future<void> updateCategory(String val) {
    category = val;
    box.write('seller_category', val);
    subCategory = val[0];
    update();
  }

  Future<void> uploadFiles(File file, String type) async {
    StorageReference imageUpload;
    final uuid = box.read('userID');
    imageUpload = FirebaseStorage.instance
        .ref()
        .child('UsersDetail/$uuid/formInfo/${type}_$uuid.jpg');
    final StorageUploadTask uploadTask = imageUpload.putFile(file);
    final StorageTaskSnapshot downloadUrl = await uploadTask.onComplete;
    final String url = await downloadUrl.ref.getDownloadURL();
    box.write('${type}ImageUrl', url);
    vatSelect = false;
    tradeSelect = false;
    update();
  }

  Future getFile(int i, String file) async {
    if (i == 2) {
      try {
        final pickedFile = await picker.getImage(source: ImageSource.gallery);
        if (file == 'vat') {
          vat = File(pickedFile.path);
          vatSelect = true;
          update();
          uploadFiles(vat, file);
        }
        if (file == 'trade') {
          trade = File(pickedFile.path);
          tradeSelect = true;
          update();
          uploadFiles(trade, file);
        }
      } on Exception catch (e) {
        // TODO
      }
    }
    if (i == 1) {
      try {
        final pickedFile = await picker.getImage(source: ImageSource.camera);
        if (file == 'vat') {
          vat = File(pickedFile.path);
          vatSelect = true;
          update();
          uploadFiles(vat, file);
        }
        if (file == 'trade') {
          trade = File(pickedFile.path);
          tradeSelect = true;
          update();
          uploadFiles(trade, file);
        }
      } on Exception catch (e) {
        // TODO
      }
    }
  }
}
