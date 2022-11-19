import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:khawi/util/firebase_service.dart';
import 'package:khawi/constants.dart';
import 'package:khawi/components/khawiBottomNaBar.dart';

import '../classes/khawi.dart';
import '../classes/offer.dart';
import '../util/database.dart';

class KhawiHomePage extends StatefulWidget {
  const KhawiHomePage({super.key});

  @override
  KhawiHomePageState createState() => KhawiHomePageState();
}

class KhawiHomePageState extends State<KhawiHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      extendBody: true,
      backgroundColor: kMainColor,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20),
            child: Text(
              'Khawi ',
              style: kMainTextStyle,
            ),
          ),
          const SizedBox(
            child: Image(
              image: AssetImage('images/alula.jpg'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: KhawiBottomNavigationBar(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(5.0),
        child: FloatingActionButton(
          backgroundColor: kButtonsColor,
          onPressed: () {
            FirebaseAuth auth = firebase_service.auth;
            FirebaseFirestore firestore = firebase_service.firestore;
            Khawi khawi = Khawi(
                name: "Bander",
                phoneNumber: "055554654",
                email: "aaa@gmail.com",
                accountCreationTime: DateTime.now(),
                nationality: "saudi",
                gender: "M")
              ..rate = 2.5;
            List<Offer> o = [
              Offer(
                  title: "culture expert",
                  description: "I will go with you to...",
                  khawi: khawi,
                  city: "dammam",
                  startDateTime: DateTime.now(),
                  endDateTime: DateTime.now(),
                  creationDateTime: DateTime.now()),
              Offer(
                  title: "mountains expert",
                  description: "I will go with you to...",
                  khawi: khawi,
                  city: "abha",
                  startDateTime: DateTime.now(),
                  endDateTime: DateTime.now(),
                  creationDateTime: DateTime.now()),
            ];
            Database.addOffer(o[0]);
            Database.addOffer(o[1]);
          },
          child: const Icon(
            Icons.person,
            size: 40,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }
}
