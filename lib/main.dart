import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:khawi/classes/khawi.dart';
import 'package:khawi/classes/offer.dart';
import 'package:khawi/getPage.dart';
import 'package:khawi/screens/khawiSignIn.dart';
import 'package:khawi/screens/khawiSignUp.dart';
import 'package:khawi/screens/offersPage.dart';
import 'package:khawi/screens/ordersPage.dart';
import 'package:khawi/screens/packagePage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:khawi/screens/profilePage.dart';
import 'package:khawi/util/database.dart';
import 'firebase_options.dart';
import 'screens/khawiSignIn.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Dosis'),
      title: 'Khawi',
      home: GetPage.getHomePage(),
    );
  }
}
