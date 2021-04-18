import 'package:bidskan/utils/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neumorphic/neumorphic.dart';

class TravelForm extends StatefulWidget {
  @override
  _TravelFormState createState() => _TravelFormState();
}

class _TravelFormState extends State<TravelForm> {
  bool transfer = false;
  String transferType, dat, tim;
  int noAdult = 1, noChild = 0, noIfant = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'Travels Form',
          style: GoogleFonts.firaSans(color: Colors.black),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.gavel,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 11),
          child: ComboForm(),
        ),
      ),
    );
  }

  Widget ComboForm() {
    return Form(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.roboto(),
                  decoration: InputDecoration(
                    labelText: "First Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.roboto(),
                  decoration: InputDecoration(
                    labelText: "Last Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          TextFormField(
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
              DatePicker.showDatePicker(context,
                  theme: DatePickerTheme(
                    containerHeight: 210.0,
                  ),
                  showTitleActions: true,
                  minTime: DateTime.now(),
                  maxTime: DateTime(2030, 12, 31), onConfirm: (date) {
                dat = '${date.day} - ${date.month} - ${date.year}';
                setState(() {});
              }, currentTime: DateTime.now(), locale: LocaleType.en);
            },
            keyboardType: TextInputType.text,
            style: GoogleFonts.roboto(),
            decoration: InputDecoration(
              labelText: dat == null ? "Date of Travel" : dat,
              suffixIcon: IconButton(
                  icon: Icon(
                    Icons.today,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.roboto(),
                  decoration: InputDecoration(
                    labelText: "Emirates",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.roboto(),
                  decoration: InputDecoration(
                    labelText: "Pickup Area/Hotel",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Container(
                width: 115,
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Adults',
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                    Text(
                      '',
                      style: GoogleFonts.roboto(fontSize: 12),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.remove_circle_outline),
                            onPressed: () {
                              if (noAdult == 01) {
                              } else {
                                setState(() {
                                  noAdult--;
                                });
                              }
                            }),
                        Text(
                          noAdult.toString(),
                          style: GoogleFonts.roboto(fontSize: 14),
                        ),
                        IconButton(
                            icon: Icon(Icons.add_circle_outline),
                            onPressed: () {
                              setState(() {
                                noAdult++;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 115,
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Child',
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                    Text(
                      '(3-11yrs)',
                      style: GoogleFonts.roboto(fontSize: 12),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.remove_circle_outline),
                            onPressed: () {
                              if (noChild == 0) {
                              } else {
                                setState(() {
                                  noChild--;
                                });
                              }
                            }),
                        Text(
                          noChild.toString(),
                          style: GoogleFonts.roboto(fontSize: 14),
                        ),
                        IconButton(
                            icon: Icon(Icons.add_circle_outline),
                            onPressed: () {
                              setState(() {
                                noChild++;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                width: 115,
                padding: EdgeInsets.all(5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Infant',
                      style: GoogleFonts.roboto(fontSize: 18),
                    ),
                    Text(
                      '(Below 3yrs)',
                      style: GoogleFonts.roboto(fontSize: 12),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.remove_circle_outline),
                            onPressed: () {
                              if (noIfant == 0) {
                              } else {
                                setState(() {
                                  noIfant--;
                                });
                              }
                            }),
                        Text(
                          noIfant.toString(),
                          style: GoogleFonts.roboto(fontSize: 14),
                        ),
                        IconButton(
                            icon: Icon(Icons.add_circle_outline),
                            onPressed: () {
                              setState(() {
                                noIfant++;
                              });
                            }),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: transfer ? 130 : 75,
            child: transfer
                ? ListView(
                    children: <Widget>[
                      Card(
                        elevation: 0,
                        child: ListTile(
                          onTap: () {
                            setState(() {
                              transferType = 'SIC';
                              transfer = false;
                            });
                          },
                          title: Text('SIC'),
                          trailing: transferType == 'SIC'
                              ? Icon(Icons.radio_button_checked)
                              : Icon(Icons.radio_button_unchecked),
                        ),
                      ),
                      Card(
                        elevation: 0,
                        child: ListTile(
                          onTap: () {
                            setState(() {
                              transferType = 'Private';
                              transfer = false;
                            });
                          },
                          title: Text('Private'),
                          trailing: transferType == 'Private'
                              ? Icon(Icons.radio_button_checked)
                              : Icon(Icons.radio_button_unchecked),
                        ),
                      )
                    ],
                  )
                : Card(
                    elevation: 0,
                    child: ListTile(
                      onTap: () {
                        setState(() {
                          transfer = true;
                        });
                      },
                      title: Text('Transfer Type'),
                      subtitle: transferType == null
                          ? Text('Select Transfer Type')
                          : Text(transferType),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                  ),
          ),
          SizedBox(
            height: 18,
          ),
          transferType == 'Private'
              ? Row(
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        onTap: () {
                          FocusScope.of(context).requestFocus(new FocusNode());
                          DatePicker.showTimePicker(context,
                              theme: DatePickerTheme(
                                containerHeight: 210.0,
                              ),
                              showTitleActions: true, onConfirm: (time) {
                            tim = '${time.hour} : ${time.minute}';
                            setState(() {});
                          },
                              currentTime: DateTime.now(),
                              showSecondsColumn: false,
                              locale: LocaleType.en);
                          setState(() {});
                        },
                        keyboardType: TextInputType.text,
                        style: GoogleFonts.roboto(),
                        decoration: InputDecoration(
                          labelText: tim == null ? "Select Time" : tim,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        style: GoogleFonts.roboto(),
                        decoration: InputDecoration(
                          labelText: "Type of Car",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : Container(),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  new MaterialPageRoute(
                      builder: (context) => new TravelForm()));
            },
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.orangeAccent,
                    Colors.yellow,
//                      Colors.orangeAccent
                  ]),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.redAccent),
              child: Center(
                child: Text(
                  'Save Details',
                  style: GoogleFonts.roboto(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  softWrap: true,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
