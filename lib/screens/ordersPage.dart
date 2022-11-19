import 'package:flutter/material.dart';
import 'package:khawi/classes/khawi.dart';
import 'package:khawi/constants.dart';
import '../classes/offer.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  Container orderBox(
      String title, double? price, String name, String city, double? rate) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      margin: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.black, fontSize: 30),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  name,
                  style: const TextStyle(fontSize: 25, color: Colors.blueGrey),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    Text(
                      "$rate",
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                Text(
                  city,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              price == null ? "" : "$price SR",
              style: const TextStyle(color: Colors.green, fontSize: 30),
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
      accountCreationTime: DateTime.now(),
      nationality: "saudi",
      gender: "M",
    )..rate = 2.5;
    List<Offer> o = [
      Offer(
          title: "culture expert",
          description: "I will go with you to...",
          price: 50,
          khawi: khawi,
          city: "dammam",
          startDateTime: DateTime.now(),
          endDateTime: DateTime.now(),
          creationDateTime: DateTime.now()),
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
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Current Order",
                style: kMainTextStyle,
              ),
            ),
            for (int i = 0; i < o.length; i++)
              orderBox(o[i].title, o[i].price, o[i].khawi.name, o[i].city,
                  khawi.rate),
          ],
        ),
      ),
      backgroundColor: kMainColor,
    );
  }
}
