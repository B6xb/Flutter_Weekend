import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:khawi/classes/package.dart';
import 'package:khawi/constants.dart';
import 'package:khawi/components/khawiBottomNaBar.dart';
import 'package:khawi/providers.dart';
import '';
import '../util/database.dart';

class packagePage extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<Package>> asyncPackages = ref.read(packagesProvider);
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
            FutureBuilder(
                future: Database.getAllPackages(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState != ConnectionState.done) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text(
                      'Error: ${snapshot.error}',
                      style: const TextStyle(color: Colors.white),
                    );
                  } else {
                    final packages = snapshot.data!;
                    return Column(
                      children: [
                        for (int i = 0; i < packages.length; i++)
                          packageBox(
                              packages[i].numberOfDays,
                              packages[i].price,
                              packages[i].numberOfReservations)
                      ],
                    );
                  }
                  //   ...asyncPackages.when(
                  //   loading: () => const [CircularProgressIndicator()],
                  //   error: (err, stack) => [Text('Error: $err')],
                  //   data: (packages) => [
                  //     for (int i = 0; i < packages.length; i++)
                  //       packageBox(packages[i].numberOfDays, packages[i].price,
                  //           packages[i].numberOfReservations)
                  //   ],
                  // )
                }),
          ],
        ),
      ),
      bottomNavigationBar: KhawiBottomNavigationBar(),
      backgroundColor: kMainColor,
    );
  }
}
