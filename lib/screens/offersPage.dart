import 'package:flutter/material.dart';
import 'package:khawi/components/offerBox.dart';
import 'package:khawi/constants.dart';
import 'package:khawi/util/database.dart';

class OffersPage extends StatefulWidget {
  OffersPage({Key? key}) : super(key: key);

  @override
  State<OffersPage> createState() => _OffersPageState();
}

class _OffersPageState extends State<OffersPage> {
  Container offerBox(
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Offers",
                style: kMainTextStyle,
              ),
            ),
            SizedBox(
              height: 20,
            ),

            FutureBuilder(
                future: Database.getAllOffers(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState != ConnectionState.done) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text(
                      'Error: ${snapshot.error}',
                      style: const TextStyle(color: Colors.white),
                    );
                  } else {
                    final offers = snapshot.data!;
                    return Column(
                      children: [
                        for (int i = 0; i < offers.length; i++)
                          OfferBox(offer: offers[i])
                        // offerBox("culture expert", 250, "Salman", "Ahsa", 4.5),
                        // offerBox("streets expert", 300, "Ali", "Abha", 4),
                        // offerBox(
                        //     "museums expert", 200, "Mohammad", "Riyadh", 3.5),
                        // offerBox("farms expert", 250, "Aqeel", "Ahsa", 4.5),
                      ],
                    );
                  }
                }),

            // // String title, double price, String name, String city,  String rate    for(int i=0;i<o.length;i++)
            // for (int i = 0; i < o.length; i++)
            //   offerBox(o[i].title, o[i].price, o[i].khawi.name, o[i].city,
            //       khawi.rate),
          ],
        ),
      ),
      backgroundColor: kMainColor,
    );
  }
}
