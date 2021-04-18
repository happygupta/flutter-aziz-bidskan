import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          BackCurve(),
                          Positioned(
                            top: 50,
                            left: 120,
                            child: Container(
                              width: 150,
                              height: 150,
                              decoration: BoxDecoration(
                                gradient: RadialGradient(
                                  radius: 1,
                                  colors: [
                                    Color(0xffFCE82A),
                                    Color(0xffF9F6D6),
                                  ],
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/a.png'),
                                        fit: BoxFit.fill,
                                      ),
                                      color: Colors.black,
                                      shape: BoxShape.circle),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: 130,
                            left: 10,
                            child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                child: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Center(
                                    child: Text(
                                      "7.8/10",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Text(
                              "Seller Name",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ]),
                          child: Row(
                            children: [
                              Icon(
                                Icons.settings,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Account Settings",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ]),
                          child: Row(
                            children: [
                              Icon(
                                Icons.settings,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Seller Profile",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0,
                                      ),
                                    ]),
                                child: Material(
                                  borderRadius: BorderRadius.circular(12),
                                  child: InkWell(
                                    splashColor: Color(0xffFDCF09),
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          Icons.rate_review,
                                          size: 45,
                                          color: Color(0xff7ADCEC),
                                        ),
                                        Text(
                                          "Reviews",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        blurRadius: 5.0,
                                      ),
                                    ]),
                                child: Material(
                                  borderRadius: BorderRadius.circular(12),
                                  child: InkWell(
                                    splashColor: Color(0xffFDCF09),
                                    onTap: () {},
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(
                                          Icons.book,
                                          size: 45,
                                          color: Color(0xff7ADCEC),
                                        ),
                                        Text(
                                          "Bookings",
                                          style: TextStyle(fontSize: 15),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ]),
                          child: Row(
                            children: [
                              Icon(
                                Icons.settings,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Refer & Earn",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ]),
                          child: Row(
                            children: [
                              Icon(
                                Icons.settings,
                                size: 25,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Contact Us",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(
                        child: Text(
                          "BIDSKAN",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 30,
                              letterSpacing: 13),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BackCurve extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.35,
      ),
      painter: CurvePainter(),
    );
  }
}

class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.lineTo(0, size.height * 0.75);
    path.quadraticBezierTo(size.width * 0.10, size.height * 0.88,
        size.width * 0.24, size.height * 0.73);
    path.quadraticBezierTo(size.width * 0.35, size.height * 0.59,
        size.width * 0.40, size.height * 0.47);
    path.quadraticBezierTo(size.width * 0.55, size.height * 0.20,
        size.width * 0.68, size.height * 0.35);
    path.quadraticBezierTo(size.width * 0.80, size.height * 0.45,
        size.width * 0.866, size.height * 0.284);
    path.quadraticBezierTo(
        size.width * 0.90, size.height * 0.10, size.width, size.height * 0.15);
    path.lineTo(size.width, 0);
    path.close();

    paint.color = Color(0xff7ADCEC);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
