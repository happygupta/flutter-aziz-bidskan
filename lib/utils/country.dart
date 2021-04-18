import 'package:bidskan/userSection/view/travel.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

Future<Widget> Country(context, int page) async {
  final box = GetStorage();
  return await showDialog(
    context: context,
    child: SimpleDialog(
      title: Text('Select Country'),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      children: <Widget>[
        GestureDetector(
          onTap: () {
            box.write('country', 'UAE');
            if (page == 1) {
              Get.back();
            }
            if (page == 2) {
              Get.back();
              Get.back();
            }
            Get.to(Travel());
          },
          child: Card(
            child: SizedBox(
              height: 180,
              width: 330,
              child: Stack(
                children: <Widget>[
                  Positioned.fill(
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl:
                          'https://cdn.pixabay.com/photo/2016/07/13/14/15/dubai-1514540__340.jpg',
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          image: DecorationImage(
                              image: imageProvider, fit: BoxFit.cover),
                        ),
                      ),
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                              child: CircularProgressIndicator(
                                  value: downloadProgress.progress)),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  Positioned(
                      bottom: 16,
                      left: 16,
                      right: 16,
                      child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'UAE',
                            style: GoogleFonts.firaSans(
                                fontSize: 24, color: Colors.white),
                          )))
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            box.write('country', 'USA');
            if (page == 1) {
              Navigator.pop(context);
            }
            if (page == 2) {
              Navigator.pop(context);
              Navigator.pop(context);
            }
            Navigator.push(context,
                new MaterialPageRoute(builder: (context) => new Travel()));
          },
          child: Card(
            child: SizedBox(
              height: 180,
              child: Stack(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: CachedNetworkImage(
                      fit: BoxFit.cover,
                      imageUrl:
                          'https://cdn.pixabay.com/photo/2016/07/13/14/15/dubai-1514540__340.jpg',
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          image: DecorationImage(
                              image: imageProvider, fit: BoxFit.cover),
                        ),
                      ),
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) => Center(
                              child: CircularProgressIndicator(
                                  value: downloadProgress.progress)),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                  Positioned(
                      bottom: 16,
                      left: 16,
                      right: 16,
                      child: FittedBox(
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.bottomLeft,
                          child: Text(
                            'USA',
                            style: GoogleFonts.firaSans(
                                fontSize: 24, color: Colors.white),
                          )))
                ],
              ),
            ),
          ),
        ),
        Card(
          child: SizedBox(
            height: 180,
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2016/07/13/14/15/dubai-1514540__340.jpg',
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover),
                      ),
                    ),
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                            child: CircularProgressIndicator(
                                value: downloadProgress.progress)),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'USA',
                          style: GoogleFonts.firaSans(
                              fontSize: 24, color: Colors.white),
                        )))
              ],
            ),
          ),
        ),
        Card(
          child: SizedBox(
            height: 180,
            child: Stack(
              children: <Widget>[
                Positioned.fill(
                  child: CachedNetworkImage(
                    fit: BoxFit.cover,
                    imageUrl:
                        'https://cdn.pixabay.com/photo/2016/07/13/14/15/dubai-1514540__340.jpg',
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        image: DecorationImage(
                            image: imageProvider, fit: BoxFit.cover),
                      ),
                    ),
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) => Center(
                            child: CircularProgressIndicator(
                                value: downloadProgress.progress)),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                Positioned(
                    bottom: 16,
                    left: 16,
                    right: 16,
                    child: FittedBox(
                        fit: BoxFit.scaleDown,
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          'UAE',
                          style: GoogleFonts.firaSans(
                              fontSize: 24, color: Colors.white),
                        )))
              ],
            ),
          ),
        ),
      ],
      contentPadding: EdgeInsets.all(10),
      titlePadding: EdgeInsets.all(8),
    ),
  );
}
