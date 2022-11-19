import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:khawi/classes/tourist.dart';
import 'package:khawi/constants.dart';
import 'package:khawi/screens/khawiMainPage.dart';
import 'package:khawi/screens/khawiSignIn.dart';
import 'package:khawi/util/database.dart';
import 'package:khawi/util/firebase_service.dart';

class KhawiSignUp extends StatelessWidget {
  KhawiSignUp({super.key});
  FirebaseAuth auth = firebase_service.auth;
  FirebaseFirestore firestore = firebase_service.firestore;
  TextEditingController fNameControler = new TextEditingController();
  TextEditingController lNaemControler = new TextEditingController();
  TextEditingController emailControler = new TextEditingController();
  TextEditingController passwordControler = new TextEditingController();
  TextEditingController passwordControler2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: kMainTextStyle,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  'Your Khawi is always there',
                  style: kMainTextStyle.copyWith(
                    letterSpacing: 0.5,
                    fontStyle: FontStyle.italic,
                    fontSize: 15,
                    color: kButtonsColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
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
                      controller: fNameControler,
                      cursorColor: kMainColor,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Icon(null),
                        ),
                        fillColor: kColor,
                        hintText: 'First Name',
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
                      controller: lNaemControler,
                      cursorColor: kMainColor,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none),
                        prefixIcon: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Icon(null),
                        ),
                        fillColor: kColor,
                        hintText: 'Last Name',
                      ),
                    ),
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
              child: TextField(
                controller: emailControler,
                cursorColor: kMainColor,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(Icons.email_outlined),
                  ),
                  fillColor: kColor,
                  hintText: 'Email',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kColor,
              ),
              child: TextField(
                controller: passwordControler,
                cursorColor: kMainColor,
                obscureText: true,
                decoration: InputDecoration(
                  focusColor: Colors.green,
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  prefixIconColor: kButtonsColor,
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(Icons.password),
                  ),
                  hintText: 'Password',
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kColor,
              ),
              child: TextField(
                controller: passwordControler2,
                cursorColor: kMainColor,
                obscureText: true,
                decoration: InputDecoration(
                  focusColor: Colors.green,
                  border: const OutlineInputBorder(borderSide: BorderSide.none),
                  prefixIconColor: kButtonsColor,
                  prefixIcon: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Icon(Icons.password),
                  ),
                  hintText: 'Confirm Password',
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: kButtonsColor,
              ),
              child: GestureDetector(
                child: const Icon(Icons.arrow_forward_rounded),
                onTap: () async {
                  if (passwordControler.text == passwordControler2.text) {
                    try {
                      UserCredential userCredential =
                          await auth.createUserWithEmailAndPassword(
                              email: emailControler.text,
                              password: passwordControler.text);
                      String name =
                          fNameControler.text + " " + lNaemControler.text;
                      Tourist tourist = new Tourist(
                          name: name,
                          email: emailControler.text,
                          accountCreationTime: DateTime.now(),
                          nationality: "",
                          gender: "",
                          balance: 0);
                      Database.addTourist(tourist);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const KhawiHomePage()));
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                        print('The account already exists for that email.');
                      }
                    } catch (e) {
                      print(e);
                    }
                  }
                },
              ),
            ),
          ],
        ),
      ),
      backgroundColor: kMainColor,
    );
  }
}
