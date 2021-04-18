import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'authScreen.dart';
import 'homeRoute.dart';

class AuthRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (ctx, snapshot) {
          if (snapshot.hasData) {
            return HomeRoute();
          }
          return AuthScreen();
        });
  }
}
