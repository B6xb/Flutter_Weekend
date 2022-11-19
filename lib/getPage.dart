import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:khawi/screens/khawiMainPage.dart';
import 'package:khawi/screens/khawiSignIn.dart';
import 'package:khawi/util/firebase_service.dart';

class GetPage {
  static final auth = FirebaseAuth.instance;
  static final authChange = auth.userChanges();

  static Widget getHomePage() {
  
    log(GetPage.authChange.toString());
    if (GetPage.authChange == null) {
      return KhawiSignIn();
    } else {
      return KhawiHomePage();
    }
  }
}
