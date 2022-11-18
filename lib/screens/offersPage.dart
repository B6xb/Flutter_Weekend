import 'package:flutter/material.dart';
import 'package:khawi/classes/khawi.dart';
import 'package:khawi/classes/tourist.dart';
import 'package:khawi/constants.dart';
import 'package:khawi/components/khawiBottomNaBar.dart';
import '../classes/offer.dart';

class OffersPage extends StatefulWidget {
  OffersPage({Key? key}) : super(key: key);

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  Khawi khawi = Khawi(
      name: name,
      phoneNumber: phoneNumber,
      email: email,
      accountCreationTime: accountCreationTime,
      nationality: nationality,
      gender: gender);
  List<Offer> o = [
    Offer(
        title: "culture expert",
        description: "I will go with you to...",
        price: 50,
        khawi: Khawi,
        city: city)
  ];

  @override
  Container offerBox(
      String title, double price, String name, String city, String rate) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  "$title",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "$name",
                  style: TextStyle(fontSize: 15, color: Colors.blueGrey),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text("$rate"),
                  ],
                ),
                Text("$city"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "$price SR",
              style: TextStyle(color: Colors.green, fontSize: 30),
            ),
          ),
        ],
      ),
    );
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
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      bottomNavigationBar: KhawiBottomNavigationBar(),
      backgroundColor: kMainColor,
    );
  }
}
