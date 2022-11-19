import 'package:flutter/material.dart';
import 'package:khawi/constants.dart';
import 'package:khawi/screens/dummy.dart';
import 'package:khawi/screens/khawiSignIn.dart';

class KhawiSignUp extends StatelessWidget {
  const KhawiSignUp({super.key});

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
                child: const Icon(Icons.arrow_forward_rounded),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const KhawiHomePage()));
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
