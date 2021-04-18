import 'package:flutter/material.dart';

class ServicesCartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Selected Services',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.chat,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemExtent: 195,
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Center(
                        child: Container(
                          height: 180,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11.0),
                            ),
                            elevation: 5.0,
                            child: Column(
                              children: [
                                Container(
                                  height: 130,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(11),
                                        topLeft: Radius.circular(11)),
                                    // image: DecorationImage(
                                    //   image: AssetImage('assets/a.png'),
                                    //   fit: BoxFit.fill,
                                    // ),
                                    color: Colors.blue[100],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Visa",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 22),
                                      ),
                                      Text(
                                        "Fill Details",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 22),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: -10,
                        right: -10,
                        child: Material(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.transparent,
                          child: IconButton(
                            icon: Icon(
                              Icons.cancel,
                              color: Colors.black,
                            ),
                            onPressed: () {},
                            iconSize: 25,
                            splashRadius: 15,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(5),
            height: 100,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(14),
                        child: InkWell(
                          splashColor: Color(0xffFDCF09),
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.add,
                                size: 25,
                              ),
                              Text(
                                "Add More",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 40,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                      ),
                      child: Material(
                        borderRadius: BorderRadius.circular(14),
                        child: InkWell(
                          splashColor: Color(0xffFDCF09),
                          onTap: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.done,
                                size: 25,
                              ),
                              Text(
                                "Submit",
                                style: TextStyle(fontSize: 15),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Material(
                    borderRadius: BorderRadius.circular(14),
                    child: InkWell(
                      splashColor: Color(0xffFDCF09),
                      onTap: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            size: 25,
                          ),
                          Text(
                            "Open Services Forms",
                            style: TextStyle(fontSize: 15),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
