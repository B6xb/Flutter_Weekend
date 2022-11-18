import 'package:flutter/material.dart';
import 'package:khawi/constants.dart';

class KhawiSignIn extends StatelessWidget {
  const KhawiSignIn({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome',
            style: kMainTextStyle,
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
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
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: kColor,
              ),
              child: TextField(
                cursorColor: kMainColor,
                obscureText: true,
                decoration: InputDecoration(
                  focusColor: Colors.green,
                  suffixIcon: IconButton(
                    splashColor: null,
                    icon: const Icon(Icons.arrow_forward_rounded),
                    onPressed: () {},
                  ),
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
          ),
        ],
      ),
      backgroundColor: kMainColor,
    );
  }
}
