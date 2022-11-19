import 'package:flutter/material.dart';
import 'package:khawi/constants.dart';
import 'package:khawi/screens/khawiMainPage.dart';
import 'package:khawi/screens/khawiSignUp.dart';

class KhawiSignIn extends StatelessWidget {
  const KhawiSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Welcome',
              style: kMainTextStyle,
            ),
            const SizedBox(
              height: 80,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kColor,
                ),
                child: TextField(
                  cursorColor: kMainColor,
                  decoration: InputDecoration(
                    border:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Icon(Icons.email_outlined),
                    ),
                    fillColor: kColor,
                    hintText: 'Email',
                  ),
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
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
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
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: kMainTextStyle.copyWith(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const KhawiSignUp()));
                  },
                  child: Text(
                    'Register',
                    style: kMainTextStyle.copyWith(
                      fontSize: 15,
                      color: kButtonsColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: kMainColor,
    );
  }
}
