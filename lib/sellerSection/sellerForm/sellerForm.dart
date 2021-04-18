import 'package:bidskan/sellerSection/sellerForm/sellerFormController.dart';
import 'package:bidskan/utils/animation.dart';
import 'package:bidskan/utils/constant.dart';
import 'package:bidskan/utils/spinnerKit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class SellerForm extends StatelessWidget {
  final sellerFormController = Get.lazyPut(() => SellerFormController());
  final box = GetStorage();
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: Text('Complete Your Profile',
                style: GoogleFonts.firaSans(color: Colors.black)),
            centerTitle: true,
          ),
          body: GetBuilder<SellerFormController>(builder: (controller) {
            var _image = controller.image;
            return controller.isUpdateData
                ? Center(
                    child: SpinerKit(),
                  )
                : SafeArea(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 140,
                              child: FadeAnimation(
                                0.4,
                                Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 14),
                                        child: InkWell(
                                          onTap: () {
                                            showDialog(
                                                context: context,
                                                builder: (context) =>
                                                    SimpleDialog(
                                                      title:
                                                          Text('Select Type'),
                                                      children: <Widget>[
                                                        ListTile(
                                                          leading: Icon(Icons
                                                              .camera_enhance),
                                                          title: Text('Camera'),
                                                          onTap: () {
                                                            controller
                                                                .getImage(1);
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                        ),
                                                        ListTile(
                                                          leading:
                                                              Icon(Icons.image),
                                                          title:
                                                              Text('Gallery'),
                                                          onTap: () {
                                                            controller
                                                                .getImage(2);
                                                            Navigator.pop(
                                                                context);
                                                          },
                                                        ),
                                                      ],
                                                    ));
                                          },
                                          child: CircleAvatar(
                                            radius: 43,
                                            backgroundColor: primaryColor,
                                            child: CircleAvatar(
                                              radius: 40,
                                              backgroundColor: Colors.white,
                                              backgroundImage: _image == null
                                                  ? null
                                                  : FileImage(_image),
                                              child: _image != null
                                                  ? controller.imgUpload
                                                      ? Center(
                                                          child:
                                                              CircularProgressIndicator(),
                                                        )
                                                      : Container()
                                                  : Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: <Widget>[
                                                        Icon(
                                                          Icons.add,
                                                          color: Colors.grey,
                                                        ),
                                                        Text(
                                                          'Add Photo',
                                                          style: GoogleFonts
                                                              .roboto(
                                                                  fontSize: 12,
                                                                  color: Colors
                                                                      .grey),
                                                        ),
                                                      ],
                                                    ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.all(15),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'Hello, Seller',
                                                style: GoogleFonts.firaSans(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                "You'r few step to away from comleting your seller profile",
                                                style: GoogleFonts.firaSans(
                                                    fontSize: 14,
                                                    color: Colors.grey),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 380,
                              child: FadeAnimation(
                                0.6,
                                Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      ListTile(
                                        onTap: () {
                                          box.write('form', 1);
                                          controller.onTapMethod();
                                        },
                                        leading: controller.com1
                                            ? CircleAvatar(
                                                radius: 12,
                                                backgroundColor: Colors.grey,
                                                child: Text(
                                                  '1',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              )
                                            : Icon(
                                                Icons.check_circle,
                                                color: Colors.green,
                                              ),
                                        title: Text('Add Your Details'),
                                        trailing: Icon(
                                          Icons.arrow_right,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Divider(),
                                      ListTile(
                                        onTap: () {
                                          box.write('form', 2);
                                          controller.onTapMethod();
                                        },
                                        enabled: !controller.com1,
                                        leading: controller.com2
                                            ? CircleAvatar(
                                                radius: 12,
                                                backgroundColor: Colors.grey,
                                                child: Text(
                                                  '2',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              )
                                            : Icon(
                                                Icons.check_circle,
                                                color: Colors.green,
                                              ),
                                        title: Text(
                                            'Award and certificate photos'),
                                        trailing: Icon(
                                          Icons.arrow_right,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Divider(),
                                      ListTile(
                                        onTap: () {
                                          box.write('form', 3);
                                          controller.onTapMethod();
                                        },
                                        enabled: !controller.com2,
                                        leading: controller.com3
                                            ? CircleAvatar(
                                                radius: 12,
                                                backgroundColor: Colors.grey,
                                                child: Text(
                                                  '3',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              )
                                            : Icon(
                                                Icons.check_circle,
                                                color: Colors.green,
                                              ),
                                        title: Text(
                                            'ID Proof Photos with address'),
                                        trailing: Icon(
                                          Icons.arrow_right,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Divider(),
                                      ListTile(
                                        onTap: () {
                                          box.write('form', 4);
                                          controller.onTapMethod();
                                        },
                                        enabled: !controller.com3,
                                        leading: controller.com4
                                            ? CircleAvatar(
                                                radius: 12,
                                                backgroundColor: Colors.grey,
                                                child: Text(
                                                  '4',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              )
                                            : Icon(
                                                Icons.check_circle,
                                                color: Colors.green,
                                              ),
                                        title:
                                            Text('Add your Service location'),
                                        trailing: Icon(
                                          Icons.arrow_right,
                                          color: Colors.black,
                                        ),
                                      ),
                                      Divider(),
                                      ListTile(
                                        onTap: () {
                                          box.write('form', 5);
                                          controller.onTapMethod();
                                        },
                                        enabled: !controller.com4,
                                        leading: controller.com5
                                            ? CircleAvatar(
                                                radius: 12,
                                                backgroundColor: Colors.grey,
                                                child: Text(
                                                  '5',
                                                  style: TextStyle(
                                                      color: Colors.black),
                                                ),
                                              )
                                            : Icon(
                                                Icons.check_circle,
                                                color: Colors.green,
                                              ),
                                        title: Text('Add Bank Details'),
                                        trailing: Icon(
                                          Icons.arrow_right,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 150,
                              child: FadeAnimation(
                                0.8,
                                Card(
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      ListTile(
                                        leading: Checkbox(
                                            value: controller.term,
                                            onChanged: (val) {
                                              controller.term = val;
                                              controller.update();
                                            }),
                                        title: Text(
                                            'I have read and I accept the terms & conditions of BIDSKAN Seller profile.'),
                                      ),
                                      !controller.com5
                                          ? controller.term
                                              ? Center(
                                                  child: InkWell(
                                                    onTap: () {
                                                      controller.isUpdateData =
                                                          true;
                                                      controller.update();
                                                      controller.saveData();
                                                    },
                                                    child: Container(
                                                      color: primaryColor,

                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 10,
                                                              horizontal: 30),
                                                      height: 50,
                                                      width: double.infinity,
//                                                       decoration: BoxDecoration(
//                                                           gradient:
//                                                               LinearGradient(
//                                                                   List: {
//                                                                 Colors
//                                                                     .orangeAccent,
//                                                                 Colors.yellow,
// //                      Colors.orangeAccent
//                                                               }),
//                                                           borderRadius:
//                                                               BorderRadius
//                                                                   .circular(50),
//                                                           color:
//                                                               Colors.redAccent),
                                                      child: Center(
                                                        child: Text(
                                                          'Submit & Verified',
                                                          style: GoogleFonts
                                                              .roboto(
                                                                  fontSize: 30,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  color: Colors
                                                                      .white),
                                                          softWrap: true,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : Center(
                                                  child: Container(
                                                    color: primaryColor,

                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            vertical: 10,
                                                            horizontal: 30),
                                                    height: 50,
                                                    width: double.infinity,
//                                                     decoration: BoxDecoration(
//                                                         gradient:
//                                                             LinearGradient(
//                                                                 List: {
//                                                               Colors.grey,
//                                                               Colors.grey,
// //                      Colors.orangeAccent
//                                                             }),
//                                                         borderRadius:
//                                                             BorderRadius
//                                                                 .circular(50),
//                                                         color:
//                                                             Colors.redAccent),
                                                    child: Center(
                                                      child: Text(
                                                        'Submit & Verified',
                                                        style:
                                                            GoogleFonts.roboto(
                                                                fontSize: 30,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .white),
                                                        softWrap: true,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                          : Center(
                                              child: InkWell(
                                                onTap: () {},
                                                child: Container(
                                                  color: primaryColor,
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 10,
                                                      horizontal: 30),
                                                  height: 50,
                                                  width: double.infinity,
//                                                   decoration: BoxDecoration(
//                                                       gradient:
//                                                           LinearGradient(List: {
//                                                         Colors.grey,
//                                                         Colors.grey,
// //                      Colors.orangeAccent
//                                                       }),
//                                                       borderRadius:
//                                                           BorderRadius.circular(
//                                                               50),
//                                                       color: Colors.redAccent),
                                                  child: Center(
                                                    child: Text(
                                                      'Submit & Verified',
                                                      style: GoogleFonts.roboto(
                                                          fontSize: 30,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.white),
                                                      softWrap: true,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
          })),
    );
  }
}
