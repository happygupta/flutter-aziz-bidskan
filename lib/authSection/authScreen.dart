import 'package:bidskan/utils/constant.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/login_bg.gif"),
                      fit: BoxFit.cover))),
          Center(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'BIDSKAN',
                    style: GoogleFonts.montserrat(
                        fontSize: 42,
                        letterSpacing: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Card(
                    color: Colors.white70,
                    margin: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: primaryColor)),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(26),
                        child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: primaryColor)),
                            child: Text('Login Anonymous'),
                            onPressed: () async {
                              await FirebaseAuth.instance.signInAnonymously();
                            }),
                      ),
                    ),
                  ),
                  Text(
                    'SCAN YOUR CHOICE',
                    style: GoogleFonts.sansita(
                        fontSize: 28,
                        letterSpacing: 2,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
