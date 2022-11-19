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
          const Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            margin: EdgeInsets.all(12),
            child: Image(
              image: AssetImage('images/alula.jpg'),
            ),
          ),
          const Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            margin: EdgeInsets.all(12),
            child: Image(
              image: AssetImage('images/3.jpg'),
            ),
          ),
          const Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            margin: EdgeInsets.all(12),
            child: Image(
              image: AssetImage('images/4.jpg'),
            ),
          ),
          const Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            margin: EdgeInsets.all(12),
            child: Image(
              image: AssetImage('images/5.jpg'),
            ),
          ),
          const Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            margin: EdgeInsets.all(12),
            child: Image(
              image: AssetImage('images/6.jpg'),
            ),
          ),
          const Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)),
            ),
            margin: EdgeInsets.all(12),
            child: Image(
              image: AssetImage('images/ashigr.jpg'),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const KhawiBottomNavigationBar(),
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
