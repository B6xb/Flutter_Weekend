import 'package:flutter/material.dart';
import 'package:khawi/constants.dart';
import 'package:khawi/components/khawiBottomNaBar.dart';

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
          onPressed: () {},
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
