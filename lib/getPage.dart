import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:khawi/components/khawiBottomNaBar.dart';
import 'package:khawi/screens/khawiMainPage.dart';
import 'package:khawi/screens/khawiPackages.dart';
import 'package:khawi/screens/khawiSignIn.dart';
import 'package:khawi/screens/offersPage.dart';
import 'package:khawi/screens/ordersPage.dart';
import 'package:khawi/screens/packagePage.dart';
import 'package:khawi/screens/profilePage.dart';

class GetPage {
  static final auth = FirebaseAuth.instance;
  static final authChange = auth.userChanges();

  static Widget getHomePage() {
    log(GetPage.authChange.toString());
    if (GetPage.authChange == null) {
      return KhawiSignIn();
    } else {
      return KhawiSignIn();
    }
  }
}
