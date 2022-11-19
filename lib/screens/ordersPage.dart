import 'package:flutter/material.dart';
import 'package:khawi/classes/khawi.dart';
import 'package:khawi/classes/tourist.dart';
import 'package:khawi/constants.dart';
import 'package:khawi/components/khawiBottomNaBar.dart';
import '../classes/offer.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  Container orderBox(
      String title, double price, String name, String city, double? rate) {
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
                  style: TextStyle(fontSize: 25, color: Colors.blueGrey),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    Text(
                      "$rate",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Text(
                  "$city",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
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

  @override
  Widget build(BuildContext context) {
    Khawi khawi = Khawi(
        name: "Bander",
        phoneNumber: "055554654",
        email: "aaa@gmail.com",
        accountCreationTime: DateTime.parse("20221120"),
        nationality: "saudi",
        gender: "M")
      ..rate = 2.5;
    List<Offer> o = [
      Offer(
          title: "culture expert",
          description: "I will go with you to...",
          price: 50,
          khawi: khawi,
          city: "dammam",
          startDateTime: DateTime.now(),
          endDateTime: DateTime.now(),
          creationDateTime: DateTime.now()
          ),
      Offer(
          title: "mountains expert",
          description: "I will go with you to...",
          price: 50,
          khawi: khawi,
          city: "apha",
          startDateTime: DateTime.now(),
          endDateTime: DateTime.now(),
          creationDateTime: DateTime.now()),
    ];

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white,
                ),
                child: Center(
                  child: Text(
                    "Current Order",
                    style: TextStyle(fontSize: 30, color: kMainColor),
                  ),
                ),
              ),
            ),
            for (int i = 0; i < o.length; i++)
              orderBox(o[i].title, o[i].price, o[i].khawi.name, o[i].city,
                  khawi.rate),
          ],
        ),
      ),
      bottomNavigationBar: KhawiBottomNavigationBar(),
      backgroundColor: kMainColor,
    );
  }
}
