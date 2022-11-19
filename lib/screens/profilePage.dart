import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:date_field/date_field.dart';
import 'package:khawi/classes/tourist.dart';

import '../constants.dart';
import 'khawiMainPage.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  final List<String> items = [
    'Male',
    'Female',
  ];
  String? selectedValue;

  Tourist tourist = Tourist(
    name: "aqeel",
    email: "a@gmd",
    accountCreationTime: DateTime.now(),
    nationality: "saudi",
    gender: "Male",
    balance: 100,
    birthDate: DateTime.parse("1999112"),
  )..bio = "I am traveller";

  final bioController = TextEditingController();
  final firstNController = TextEditingController();
  final lastNController = TextEditingController();
  final genderController = TextEditingController();
  final nationlityController = TextEditingController();
  final birthController = TextEditingController();
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://www.pngitem.com/pimgs/m/106-1068071_black-person-png-black-man-business-png-transparent.png"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Your profile',
                    style: kMainTextStyle.copyWith(
                      letterSpacing: 0.5,
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                      color: kButtonsColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kColor,
                ),
                height: 200,
                child: TextField(
                  controller: bioController,
                  cursorColor: kMainColor,
                  decoration: InputDecoration(
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(20.0),
                      ),
                      fillColor: kColor,
                      hintText: tourist.bio),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kColor,
                  ),
                  child: TextField(
                    controller: firstNController,
                    cursorColor: kMainColor,
                    decoration: InputDecoration(
                      border:
                          const OutlineInputBorder(borderSide: BorderSide.none),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Icon(null),
                      ),
                      fillColor: kColor,
                      hintText: tourist.name,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kColor,
                ),
                child: Center(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      hint: Text(
                        'Select Your gender',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: items
                          .map((item) => DropdownMenuItem<String>(
                                value: item,
                                child: Text(
                                  item,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ))
                          .toList(),
                      value: selectedValue,
                      onChanged: (value) {
                        setState(() {
                          selectedValue = value as String;
                        });
                      },
                      buttonHeight: 40,
                      buttonWidth: 250,
                      itemHeight: 40,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kColor,
                      ),
                      child: TextField(
                        controller: nationlityController,
                        cursorColor: kMainColor,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Icon(null),
                          ),
                          fillColor: kColor,
                          hintText: tourist.nationality,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: kColor,
                      ),
                      child: TextField(
                        controller: birthController,
                        cursorColor: kMainColor,
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(
                              borderSide: BorderSide.none),
                          prefixIcon: const Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Icon(null),
                          ),
                          fillColor: kColor,
                          hintText: 'Birthdate',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: kButtonsColor,
                ),
                child: GestureDetector(
                  child: const Text(
                    "Save",
                    style: TextStyle(fontSize: 20),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ]),
      backgroundColor: kMainColor,
    );
  }
}

//final String nationality;
//   final String gender;
//   String? birthDate;
//   final DateTime accountCreationTime;
//   double balance;
//   // Not in constructor
//   Package? currentPackage;
//   String? bio;
//   double? rate;
