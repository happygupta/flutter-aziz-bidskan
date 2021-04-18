import 'package:bidskan/sellerSection/sellerForm/sellerFormController.dart';
import 'package:bidskan/utils/animation.dart';
import 'package:bidskan/utils/constant.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';

class AddFormDetails extends StatelessWidget {
  final box = GetStorage();
  final controller = Get.find<SellerFormController>();
  final profileForm = GlobalKey<FormState>();
  final companyForm = GlobalKey<FormState>();
  final idForm = GlobalKey<FormState>();
  final serviceForm = GlobalKey<FormState>();
  final bankForm = GlobalKey<FormState>();
  List<String> sellerTravels = List();
  List<String> sellerInsurance = List();
  List<String> sellerMeals = List();
  List<String> sellerRental = List();
  List<String> servicesArea = List();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text('Add Details',
            style: GoogleFonts.firaSans(color: Colors.black)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: selectForm(),
        ),
      ),
    );
  }

  selectForm() {
    final int form = box.read('form');
    if (form == 1) {
      return addDetail();
    }
    if (form == 2) {
      return companyDetail();
    }
    if (form == 3) {
      return idProofDetail();
    }
    if (form == 4) {
      return serviceDetail();
    }
    if (form == 5) {
      return bankDetail();
    }
  }

  Widget addDetail() {
    return GetBuilder<SellerFormController>(builder: (controller) {
      return Form(
          key: profileForm,
          child: Column(
            children: <Widget>[
              Text(
                'Complete Profile',
                style: GoogleFonts.firaSans(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      initialValue: box.read('fName'),
                      style: GoogleFonts.roboto(),
                      validator: (val) {
                        if (val.isEmpty || val.length < 3) {
                          return 'Enter Valid Name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "First Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onChanged: (val) {
                        box.write('fName', val);
                      },
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: TextFormField(
                      keyboardType: TextInputType.text,
                      initialValue: box.read('lName'),
                      style: GoogleFonts.roboto(),
                      validator: (val) {
                        if (val.isEmpty || val.length < 3) {
                          return 'Enter Valid Name';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Last Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      onChanged: (val) {
                        box.write('lName', val);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18,
              ),
              Text(
                'Select Country',
                style: GoogleFonts.firaSans(fontSize: 22),
                textAlign: TextAlign.start,
              ),
              Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: primaryColor)),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: CountryCodePicker(
                        onChanged: (code) {
                          box.write('per_Country_code', code.dialCode);
                          box.write('per_Country_Name', code.name);
                        },
                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                        initialSelection: box.read('per_Country_code') == null
                            ? '+971'
                            : box.read('per_Country_code'),
                        favorite: ['+971', '+91'],
                        hideMainText: false,
                        showFlagMain: true,
                        showFlag: true,
                        showCountryOnly: true,
                        showOnlyCountryWhenClosed: true,
                        alignLeft: true,
                        onInit: (code) {
                          box.write('per_Country_code', code.dialCode);
                          box.write('per_Country_Name', code.name);
                        }),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                key: ValueKey('phone'),
                initialValue: box.read('mobileNo'),
                autocorrect: false,
                textCapitalization: TextCapitalization.none,
                enableSuggestions: true,
                validator: (value) {
                  if (value.isEmpty || value.length < 9) {
                    return 'Please enter a valid no';
                  }
                  return null;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Mobile Number',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),
                ),
                onChanged: (value) {
                  box.write('mobileNo', value);
                },
              ),
              SizedBox(
                height: 18,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                style: GoogleFonts.roboto(),
                initialValue: box.read('per_email'),
                validator: (val) {
                  if (val.isEmpty || !controller.validateEmail(val)) {
                    return 'Enter Valid Email';
                  }
                  return null;
                },
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                onChanged: (val) {
                  box.write('per_email', val);
                },
              ),
              SizedBox(
                height: 18,
              ),
              DropdownButton<String>(
                items: <String>['TRAVEL', 'INSURANCE', 'MEALS', 'CAR RENTAL']
                    .map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(
                      value,
                      style: GoogleFonts.roboto(color: Colors.black),
                    ),
                  );
                }).toList(),
                hint: Text(
                  controller.category,
                  style: GoogleFonts.roboto(color: Colors.black),
                ),
                onChanged: (val) {
                  controller.updateCategory(val);
                },
              ),
              SizedBox(
                height: 10,
              ),
              controller.subCategory == 'T'
                  ? Container(
                      child: FadeAnimation(
                        0.4,
                        Card(
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Checkbox(
                                      value: sellerTravels.contains('Packages')
                                          ? true
                                          : false,
                                      onChanged: (val) {
                                        if (val) {
                                          sellerTravels.add('Packages');
                                        } else {
                                          sellerTravels.removeWhere((element) {
                                            return element == 'Packages';
                                          });
                                        }
                                        controller.update();
                                      }),
                                  Text('Packages'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Checkbox(
                                      value: sellerTravels.contains('Combos')
                                          ? true
                                          : false,
                                      onChanged: (val) {
                                        if (val) {
                                          sellerTravels.add('Combos');
                                        } else {
                                          sellerTravels.removeWhere((element) {
                                            return element == 'Combos';
                                          });
                                        }
                                        controller.update();
                                      }),
                                  Text('Combos'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Checkbox(
                                      value: sellerTravels.contains('Visa')
                                          ? true
                                          : false,
                                      onChanged: (val) {
                                        if (val) {
                                          sellerTravels.add('Visa');
                                        } else {
                                          sellerTravels.removeWhere((element) {
                                            return element == 'Visa';
                                          });
                                        }
                                        controller.update();
                                      }),
                                  Text('Visa'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Checkbox(
                                      value:
                                          sellerTravels.contains('Excursions')
                                              ? true
                                              : false,
                                      onChanged: (val) {
                                        if (val) {
                                          sellerTravels.add('Excursions');
                                        } else {
                                          sellerTravels.removeWhere((element) {
                                            return element == 'Excursions';
                                          });
                                        }
                                        controller.update();
                                      }),
                                  Text('Excursions'),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Checkbox(
                                      value: sellerTravels.contains('Transport')
                                          ? true
                                          : false,
                                      onChanged: (val) {
                                        if (val) {
                                          sellerTravels.add('Transport');
                                        } else {
                                          sellerTravels.removeWhere((element) {
                                            return element == 'Transport';
                                          });
                                        }
                                        controller.update();
                                      }),
                                  Text('Transport'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  : controller.subCategory == 'I'
                      ? Container(
                          child: FadeAnimation(
                            0.4,
                            Card(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Checkbox(
                                          value: sellerInsurance
                                                  .contains('Medical Insurance')
                                              ? true
                                              : false,
                                          onChanged: (val) {
                                            if (val) {
                                              sellerInsurance
                                                  .add('Medical Insurance');
                                            } else {
                                              sellerInsurance
                                                  .removeWhere((element) {
                                                return element ==
                                                    'Medical Insurance';
                                              });
                                            }
                                            controller.update();
                                          }),
                                      Text('Medical Insurance'),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Checkbox(
                                          value: sellerInsurance
                                                  .contains('Car Insurance')
                                              ? true
                                              : false,
                                          onChanged: (val) {
                                            if (val) {
                                              sellerInsurance
                                                  .add('Car Insurance');
                                            } else {
                                              sellerInsurance
                                                  .removeWhere((element) {
                                                return element ==
                                                    'Car Insurance';
                                              });
                                            }
                                            controller.update();
                                          }),
                                      Text('Car Insurance'),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        )
                      : controller.subCategory == 'M'
                          ? Container(
                              child: FadeAnimation(
                                0.4,
                                Card(
                                  elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Checkbox(
                                              value: sellerMeals
                                                      .contains('Catering')
                                                  ? true
                                                  : false,
                                              onChanged: (val) {
                                                if (val) {
                                                  sellerMeals.add('Catering');
                                                } else {
                                                  sellerMeals
                                                      .removeWhere((element) {
                                                    return element ==
                                                        'Catering';
                                                  });
                                                }
                                                controller.update();
                                              }),
                                          Text('Catering'),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Checkbox(
                                              value:
                                                  sellerMeals.contains('Events')
                                                      ? true
                                                      : false,
                                              onChanged: (val) {
                                                if (val) {
                                                  sellerMeals.add('Events');
                                                } else {
                                                  sellerMeals
                                                      .removeWhere((element) {
                                                    return element == 'Events';
                                                  });
                                                }
                                                controller.update();
                                              }),
                                          Text('Events'),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Checkbox(
                                              value:
                                                  sellerMeals.contains('Combos')
                                                      ? true
                                                      : false,
                                              onChanged: (val) {
                                                if (val) {
                                                  sellerMeals.add('Combos');
                                                } else {
                                                  sellerMeals
                                                      .removeWhere((element) {
                                                    return element == 'Combos';
                                                  });
                                                }
                                                controller.update();
                                              }),
                                          Text('Combos'),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Checkbox(
                                              value:
                                                  sellerMeals.contains('Tiffin')
                                                      ? true
                                                      : false,
                                              onChanged: (val) {
                                                if (val) {
                                                  sellerMeals.add('Tiffin');
                                                } else {
                                                  sellerMeals
                                                      .removeWhere((element) {
                                                    return element == 'Tiffin';
                                                  });
                                                }
                                                controller.update();
                                              }),
                                          Text('Tiffin'),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: <Widget>[
                                          Checkbox(
                                              value: sellerMeals
                                                      .contains('Chef Services')
                                                  ? true
                                                  : false,
                                              onChanged: (val) {
                                                if (val) {
                                                  sellerMeals
                                                      .add('Chef Services');
                                                } else {
                                                  sellerMeals
                                                      .removeWhere((element) {
                                                    return element ==
                                                        'Chef Services';
                                                  });
                                                }
                                                controller.update();
                                              }),
                                          Text('Chef Services'),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : controller.subCategory == 'C'
                              ? Container(
                                  child: FadeAnimation(
                                    0.4,
                                    Card(
                                      elevation: 5,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Checkbox(
                                                  value: sellerRental
                                                          .contains('Daily')
                                                      ? true
                                                      : false,
                                                  onChanged: (val) {
                                                    if (val) {
                                                      sellerRental.add('Daily');
                                                    } else {
                                                      sellerRental.removeWhere(
                                                          (element) {
                                                        return element ==
                                                            'Daily';
                                                      });
                                                    }
                                                    controller.update();
                                                  }),
                                              Text('Daily'),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Checkbox(
                                                  value: sellerRental
                                                          .contains('Monthly')
                                                      ? true
                                                      : false,
                                                  onChanged: (val) {
                                                    if (val) {
                                                      sellerRental
                                                          .add('Monthly');
                                                    } else {
                                                      sellerRental.removeWhere(
                                                          (element) {
                                                        return element ==
                                                            'Monthly';
                                                      });
                                                    }
                                                    controller.update();
                                                  }),
                                              Text('Monthly'),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Checkbox(
                                                  value: sellerRental
                                                          .contains('Yearly')
                                                      ? true
                                                      : false,
                                                  onChanged: (val) {
                                                    if (val) {
                                                      sellerRental
                                                          .add('Yearly');
                                                    } else {
                                                      sellerRental.removeWhere(
                                                          (element) {
                                                        return element ==
                                                            'Yearly';
                                                      });
                                                    }
                                                    controller.update();
                                                  }),
                                              Text('Yearly'),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Checkbox(
                                                  value: sellerRental.contains(
                                                          'Luxury Car Rental')
                                                      ? true
                                                      : false,
                                                  onChanged: (val) {
                                                    if (val) {
                                                      sellerRental.add(
                                                          'Luxury Car Rental');
                                                    } else {
                                                      sellerRental.removeWhere(
                                                          (element) {
                                                        return element ==
                                                            'Luxury Car Rental';
                                                      });
                                                    }
                                                    controller.update();
                                                  }),
                                              Text('Luxury Car Rental'),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Checkbox(
                                                  value: sellerRental
                                                          .contains('Events')
                                                      ? true
                                                      : false,
                                                  onChanged: (val) {
                                                    if (val) {
                                                      sellerRental
                                                          .add('Events');
                                                    } else {
                                                      sellerRental.removeWhere(
                                                          (element) {
                                                        return element ==
                                                            'Events';
                                                      });
                                                    }
                                                    controller.update();
                                                  }),
                                              Text('Events'),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              : Container(),
              SizedBox(
                height: 30,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    if (profileForm.currentState.validate()) {
                      if (controller.subCategory == 'T') {
                        if (sellerTravels.isNotEmpty) {
                          box.write('seller_services', sellerTravels);
                          Get.back(result: 1);
                        }
                      }
                      if (controller.subCategory == 'I') {
                        if (sellerInsurance.isNotEmpty) {
                          box.write('seller_services', sellerInsurance);
                          Get.back(result: 1);
                        }
                      }
                      if (controller.subCategory == 'M') {
                        if (sellerMeals.isNotEmpty) {
                          box.write('seller_services', sellerMeals);
                          Get.back(result: 1);
                        }
                      }
                      if (controller.subCategory == 'C') {
                        if (sellerRental.isNotEmpty) {
                          box.write('seller_services', sellerRental);
                          Get.back(result: 1);
                        }
                      }
                    }
                  },
                  child: Container(
                    color: primaryColor,
                    margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    height: 50,
                    width: double.infinity,
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                         Colors.orangeAccent,
//                         Colors.yellow,
// //                      Colors.orangeAccent
//                       ]),
//                       borderRadius: BorderRadius.circular(50),
//                       color: Colors.redAccent),
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
              ),
            ],
          ));
    });
  }

  Widget companyDetail() {
    return Form(
      key: companyForm,
      child: Column(
        children: <Widget>[
          Text(
            'Complete Company Profile',
            style:
                GoogleFonts.firaSans(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            style: GoogleFonts.roboto(),
            initialValue: box.read('company_name'),
            validator: (val) {
              if (val.isEmpty || val.length < 4) {
                return 'Valid Company Name';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Company Name",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onChanged: (value) {
              box.write('company_name', value);
            },
          ),
          SizedBox(
            height: 18,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            style: GoogleFonts.roboto(),
            initialValue: box.read('company_address'),
            validator: (value) {
              if (value.isEmpty || value.length < 5) {
                return 'Enter Valid Address';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Address with Emirates",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onChanged: (val) {
              box.write('company_address', val);
            },
          ),
          SizedBox(
            height: 18,
          ),
          Text(
            'Manager',
            style: GoogleFonts.firaSans(fontSize: 22),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.roboto(),
                  initialValue: box.read('manager_name'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please fill this';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Manager Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onChanged: (value) {
                    box.write('manager_name', value);
                  },
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: GoogleFonts.roboto(),
                  initialValue: box.read('manager_number'),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please fill this';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: "Manager Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onChanged: (value) {
                    box.write('manager_number', value);
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'Operation Team',
                style: GoogleFonts.firaSans(fontSize: 22),
              ),
              Text(
                '(Optional)',
                style: GoogleFonts.firaSans(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.roboto(),
                  initialValue: box.read('team_name'),
                  decoration: InputDecoration(
                    labelText: "Team Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onChanged: (value) {
                    box.write('team_name', value);
                  },
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  style: GoogleFonts.roboto(),
                  initialValue: box.read('team_number'),
                  decoration: InputDecoration(
                    labelText: "Team Number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onChanged: (value) {
                    box.write('team_number', value);
                  },
                ),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            style: GoogleFonts.roboto(),
            initialValue: box.read('ladline_number'),
            decoration: InputDecoration(
              labelText: "LadLine Number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onChanged: (value) {
              box.write('ladline_number', value);
            },
          ),
          SizedBox(
            height: 18,
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            style: GoogleFonts.roboto(),
            initialValue: box.read('company_email'),
            validator: (val) {
              if (val.isEmpty || !controller.validateEmail(val)) {
                return 'Enter Valid Email';
              }
              return null;
            },
            decoration: InputDecoration(
              labelText: "Company Email",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onChanged: (value) {
              box.write('company_email', value);
            },
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: InkWell(
              onTap: () {
                if (companyForm.currentState.validate()) {
                  Get.back(result: 2);
                }
              },
              child: Container(
                color: primaryColor,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                height: 50,
                width: double.infinity,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(colors: [
//                       Colors.orangeAccent,
//                       Colors.yellow,
// //                      Colors.orangeAccent
//                     ]),
//                     borderRadius: BorderRadius.circular(50),
//                     color: Colors.redAccent),
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
          ),
        ],
      ),
    );
  }

  Widget idProofDetail() {
    return GetBuilder<SellerFormController>(builder: (controller) {
      return Form(
          child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'VAT Detail',
                style: GoogleFonts.firaSans(fontSize: 22),
              ),
              Text(
                '(Optional)',
                style: GoogleFonts.firaSans(fontSize: 14, color: Colors.grey),
              ),
            ],
          ),
          SizedBox(
            height: 18,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            style: GoogleFonts.roboto(),
            initialValue: box.read('vat_number'),
            decoration: InputDecoration(
              labelText: "VAT Number",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
            ),
            onChanged: (value) {
              box.write('vat_number', value);
            },
          ),
          SizedBox(
            height: 18,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ListTile(
              onTap: () {
                if (!controller.tradeSelect) {
                  Get.dialog(SimpleDialog(
                    title: Text('Select Type'),
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.camera_enhance),
                        title: Text('Camera'),
                        onTap: () {
                          controller.getFile(1, 'vat');
                          Get.back();
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.image),
                        title: Text('Gallery'),
                        onTap: () {
                          controller.getFile(2, 'vat');
                          Get.back();
                        },
                      ),
                    ],
                  ));
                }
              },
              leading: Icon(
                Icons.attach_file,
                color: Colors.black,
              ),
              title: Text('Vat Transaction Certificate'),
              subtitle: controller.vat == null
                  ? Text('Select File')
                  : Text('File Selected'),
              trailing: controller.vat == null
                  ? Icon(
                      Icons.note_add,
                      color: Colors.blue,
                    )
                  : controller.vatSelect
                      ? CircularProgressIndicator()
                      : Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ListTile(
              onTap: () {
                if (!controller.vatSelect) {
                  Get.dialog(SimpleDialog(
                    title: Text('Select Type'),
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.camera_enhance),
                        title: Text('Camera'),
                        onTap: () {
                          controller.getFile(1, 'trade');
                          Get.back();
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.image),
                        title: Text('Gallery'),
                        onTap: () {
                          controller.getFile(2, 'trade');
                          Get.back();
                        },
                      ),
                    ],
                  ));
                }
              },
              leading: Icon(
                Icons.attach_file,
                color: Colors.black,
              ),
              title: Text('Trade Licence*'),
              subtitle: controller.trade == null
                  ? Text('Select File')
                  : Text('File Selected'),
              trailing: controller.trade == null
                  ? Icon(
                      Icons.note_add,
                      color: Colors.blue,
                    )
                  : controller.tradeSelect
                      ? CircularProgressIndicator()
                      : Icon(
                          Icons.check_circle,
                          color: Colors.green,
                        ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: InkWell(
              onTap: () {
                if (controller.trade != null &&
                    !controller.tradeSelect &&
                    !controller.vatSelect) {
                  Get.back(result: 3);
                } else {
//                Fluttertoast.showToast(
//                    msg: 'Please Select Trade Licence!',
//                    toastLength: Toast.LENGTH_LONG);
                }
              },
              child: Container(
                color: primaryColor,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                height: 50,
                width: double.infinity,
//               decoration: BoxDecoration(
//                   gradient: LinearGradient(colors: [
//                     Colors.orangeAccent,
//                     Colors.yellow,
// //                      Colors.orangeAccent
//                   ]),
//                   borderRadius: BorderRadius.circular(50),
//                   color: Colors.redAccent),
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
          ),
        ],
      ));
    });
  }

  Widget serviceDetail() {
    return GetBuilder<SellerFormController>(builder: (controller) {
      return Form(
        child: Column(
          children: <Widget>[
            Text(
              'Add Service Location',
              style: GoogleFonts.firaSans(
                  fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: primaryColor)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: CountryCodePicker(
                      onChanged: (code) {
                        controller.serviceCountry = code.name;
                        box.write('service_country', code.name);
                        controller.update();
                      },
                      initialSelection: '+971',
                      favorite: ['+971', '+91'],
                      hideMainText: false,
                      showFlagMain: true,
                      showFlag: true,
                      showCountryOnly: true,
                      showOnlyCountryWhenClosed: true,
                      alignLeft: true,
                      onInit: (code) {
                        controller.serviceCountry = code.name;
                        box.write('service_country', code.name);
                      }),
                ),
              ),
            ),
            SizedBox(
              height: 18,
            ),
            DropdownButton<String>(
              items: <String>[
                'Abu Dhabi',
                'Ajman',
                'Dubai',
                'Fujairah',
                'Ras Al Khaimah',
                'Sharjah',
                'Umm Al Quwain'
              ].map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: new Text(
                    value,
                    style: GoogleFonts.roboto(color: Colors.black),
                  ),
                );
              }).toList(),
              hint: Text(
                controller.emirate,
                style: GoogleFonts.roboto(color: Colors.black),
              ),
              onChanged: (val) {
                controller.emirate = val;
                controller.update();
              },
            ),
            SizedBox(
              height: 18,
            ),
            Container(
              child: FadeAnimation(
                0.4,
                controller.emirate == 'Dubai'
                    ? Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                    value: servicesArea.contains(
                                            'Deira,${controller.emirate},${controller.serviceCountry}')
                                        ? true
                                        : false,
                                    onChanged: (val) {
                                      if (val) {
                                        servicesArea.add(
                                            'Deira,${controller.emirate},${controller.serviceCountry}');
                                      } else {
                                        servicesArea.removeWhere((element) {
                                          return element ==
                                              'Deira,${controller.emirate},${controller.serviceCountry}';
                                        });
                                      }
                                      controller.update();
                                    }),
                                Text('Deira'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                    value: servicesArea.contains(
                                            'Dubai Creek,${controller.emirate},${controller.serviceCountry}')
                                        ? true
                                        : false,
                                    onChanged: (val) {
                                      if (val) {
                                        servicesArea.add(
                                            'Dubai Creek,${controller.emirate},${controller.serviceCountry}');
                                      } else {
                                        servicesArea.removeWhere((element) {
                                          return element ==
                                              'Dubai Creek,${controller.emirate},${controller.serviceCountry}';
                                        });
                                      }
                                      controller.update();
                                    }),
                                Text('Dubai Creek'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                    value: servicesArea.contains(
                                            'Bur Dubai,${controller.emirate},${controller.serviceCountry}')
                                        ? true
                                        : false,
                                    onChanged: (val) {
                                      if (val) {
                                        servicesArea.add(
                                            'Bur Dubai,${controller.emirate},${controller.serviceCountry}');
                                      } else {
                                        servicesArea.removeWhere((element) {
                                          return element ==
                                              'Bur Dubai,${controller.emirate},${controller.serviceCountry}';
                                        });
                                      }
                                      controller.update();
                                    }),
                                Text('Bur Dubai'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                    value: servicesArea.contains(
                                            'Al Shindagha,${controller.emirate},${controller.serviceCountry}')
                                        ? true
                                        : false,
                                    onChanged: (val) {
                                      if (val) {
                                        servicesArea.add(
                                            'Al Shindagha,${controller.emirate},${controller.serviceCountry}');
                                      } else {
                                        servicesArea.removeWhere((element) {
                                          return element ==
                                              'Al Shindagha,${controller.emirate},${controller.serviceCountry}';
                                        });
                                      }
                                      controller.update();
                                    }),
                                Text('Al Shindagha'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                    value: servicesArea.contains(
                                            'Bastakiya,${controller.emirate},${controller.serviceCountry}')
                                        ? true
                                        : false,
                                    onChanged: (val) {
                                      if (val) {
                                        servicesArea.add(
                                            'Bastakiya,${controller.emirate},${controller.serviceCountry}');
                                      } else {
                                        servicesArea.removeWhere((element) {
                                          return element ==
                                              'Bastakiya,${controller.emirate},${controller.serviceCountry}';
                                        });
                                      }
                                      controller.update();
                                    }),
                                Text('Bastakiya'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                    value: servicesArea.contains(
                                            'Sheikh Zayed Road,${controller.emirate},${controller.serviceCountry}')
                                        ? true
                                        : false,
                                    onChanged: (val) {
                                      if (val) {
                                        servicesArea.add(
                                            'Sheikh Zayed Road,${controller.emirate},${controller.serviceCountry}');
                                      } else {
                                        servicesArea.removeWhere((element) {
                                          return element ==
                                              'Sheikh Zayed Road,${controller.emirate},${controller.serviceCountry}';
                                        });
                                      }
                                      controller.update();
                                    }),
                                Text('Sheikh Zayed Road'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                    value: servicesArea.contains(
                                            'Jumeirah Beach Residence,${controller.emirate},${controller.serviceCountry}')
                                        ? true
                                        : false,
                                    onChanged: (val) {
                                      if (val) {
                                        servicesArea.add(
                                            'Jumeirah Beach residence,${controller.emirate},${controller.serviceCountry}');
                                      } else {
                                        servicesArea.removeWhere((element) {
                                          return element ==
                                              'Jumeirah Beach Residence,${controller.emirate},${controller.serviceCountry}';
                                        });
                                      }
                                      controller.update();
                                    }),
                                Text('Jumeirah Beach Residence'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                    value: servicesArea.contains(
                                            'Al Fahidi and Al Seef,${controller.emirate},${controller.serviceCountry}')
                                        ? true
                                        : false,
                                    onChanged: (val) {
                                      if (val) {
                                        servicesArea.add(
                                            'Al Fahidi and Al Seef,${controller.emirate},${controller.serviceCountry}');
                                      } else {
                                        servicesArea.removeWhere((element) {
                                          return element ==
                                              'Al Fahidi and Al Seef,${controller.emirate},${controller.serviceCountry}';
                                        });
                                      }
                                      controller.update();
                                    }),
                                Text('Al Fahidi and Al Seef'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                    value: servicesArea.contains(
                                            'Business Bay  and Downtown,${controller.emirate},${controller.serviceCountry}')
                                        ? true
                                        : false,
                                    onChanged: (val) {
                                      if (val) {
                                        servicesArea.add(
                                            'Business Bay and Downtown,${controller.emirate},${controller.serviceCountry}');
                                      } else {
                                        servicesArea.removeWhere((element) {
                                          return element ==
                                              'Business Bay and Downtown,${controller.emirate},${controller.serviceCountry}';
                                        });
                                      }
                                      controller.update();
                                    }),
                                Text('Business Bay and Downtown'),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Checkbox(
                                    value: servicesArea.contains(
                                            'Dubai Marina,${controller.emirate},${controller.serviceCountry}')
                                        ? true
                                        : false,
                                    onChanged: (val) {
                                      if (val) {
                                        servicesArea.add(
                                            'Dubai Marina,${controller.emirate},${controller.serviceCountry}');
                                      } else {
                                        servicesArea.removeWhere((element) {
                                          return element ==
                                              'Dubai Marina,${controller.emirate},${controller.serviceCountry}';
                                        });
                                      }
                                      controller.update();
                                    }),
                                Text('Dubai Marina'),
                              ],
                            ),
                          ],
                        ),
                      )
                    : Container(),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  if (servicesArea.isNotEmpty) {
                    box.write('services_area', servicesArea);
                    Get.back(result: 4);
                  }
//                else
//                  Fluttertoast.showToast(msg: 'Please Select Service Area');
                },
                child: Container(
                  color: primaryColor,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  height: 50,
                  width: double.infinity,
//                 decoration: BoxDecoration(
//                     gradient: LinearGradient(colors: [
//                       Colors.orangeAccent,
//                       Colors.yellow,
// //                      Colors.orangeAccent
//                     ]),
//                     borderRadius: BorderRadius.circular(50),
//                     color: Colors.redAccent),
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
            ),
          ],
        ),
      );
    });
  }

  Widget bankDetail() {
    return Form(
        key: bankForm,
        child: Column(
          children: <Widget>[
            Text(
              'Add Bank Details',
              style: GoogleFonts.firaSans(
                  fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 18,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              style: GoogleFonts.roboto(),
              initialValue: box.read('bank_holder_name'),
              decoration: InputDecoration(
                labelText: "Account Holder Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onChanged: (value) {
                box.write('bank_holder_name', value);
              },
            ),
            SizedBox(
              height: 18,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              style: GoogleFonts.roboto(),
              initialValue: box.read('bank_account_number'),
              decoration: InputDecoration(
                labelText: "Account Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onChanged: (value) {
                box.write('bank_account_number', value);
              },
            ),
            SizedBox(
              height: 18,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              style: GoogleFonts.roboto(),
              initialValue: box.read('bank_iban_number'),
              decoration: InputDecoration(
                labelText: "IBAN Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onChanged: (value) {
                box.write('bank_iban_number', value);
              },
            ),
            SizedBox(
              height: 18,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              style: GoogleFonts.roboto(),
              initialValue: box.read('bank_swift_number'),
              decoration: InputDecoration(
                labelText: "SWIFT Code",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onChanged: (value) {
                box.write('bank_swift_number', value);
              },
            ),
            SizedBox(
              height: 18,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              style: GoogleFonts.roboto(),
              initialValue: box.read('bank_name'),
              decoration: InputDecoration(
                labelText: "Bank Name (optional)",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              onChanged: (value) {
                box.write('bank_name', value);
              },
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: InkWell(
                onTap: () {
                  if (bankForm.currentState.validate()) {
                    Get.back(result: 5);
                  }
                },
                child: Container(
                  color: primaryColor,
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  height: 50,
                  width: double.infinity,
//                   decoration: BoxDecoration(
//                       gradient: LinearGradient(colors: [
//                         Colors.orangeAccent,
//                         Colors.yellow,
// //                      Colors.orangeAccent
//                       ]),
//                       borderRadius: BorderRadius.circular(50),
//                       color: Colors.redAccent),
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
            ),
          ],
        ));
  }
}
