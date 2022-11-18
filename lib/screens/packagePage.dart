import 'package:flutter/material.dart';
import 'package:khawi/classes/package.dart';
import 'package:khawi/constants.dart';
import 'package:khawi/components/khawiBottomNaBar.dart';
import '';
import '../util/database.dart';

class packagePage extends StatelessWidget {
  packagePage({Key? key}) : super(key: key);

  Container packageBox(int days, double price, int numOfReservations) {
    return Container(
      width: double.infinity,
      height: 100,
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
                  "$days days Package",
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "$numOfReservations reservations",
                  style: TextStyle(fontSize: 15, color: Colors.blueGrey),
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
    Future<List<Package>> p = Database.getAllPackages();

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                "Packages",
                style: kMainTextStyle,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            for (int i = 0; i < p.length; i++)
              packageBox(
                  p[i].numberOfDays, p[i].price, p[i].numberOfReservations),
          ],
        ),
      ),
      bottomNavigationBar: KhawiBottomNavigationBar(),
      backgroundColor: kMainColor,
    );
  }
}
