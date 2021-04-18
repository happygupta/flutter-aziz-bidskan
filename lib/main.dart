import 'package:bidskan/authSection/authRoute.dart';
import 'package:bidskan/authSection/splashScreen.dart';
import 'package:country_code_picker/country_localizations.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: [
        Locale('en'),
      ],
      localizationsDelegates: [
        CountryLocalizations.delegate,
      ],
      initialRoute: '/',
      onInit: () async {
        Future.delayed(Duration(seconds: 7), () {
          Get.off(AuthRoute());
        });
      },
      getPages: [
        GetPage(name: '/', page: () => SplashScreen()),
      ],
    );
  }
}
