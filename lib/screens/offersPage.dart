import 'package:flutter/material.dart';
import 'package:khawi/constants.dart';
import 'package:khawi/components/khawiBottomNaBar.dart';

class OffersPage extends StatefulWidget {
  const OffersPage({Key? key}) : super(key: key);

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  @override
  Container OfferBox() {
    return Container();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "Offers",
                style: kMainTextStyle,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: KhawiBottomNavigationBar(),
      backgroundColor: kMainColor,
    );
  }
}
