// import 'package:flutter/material.dart';
// import 'package:khawi/classes/khawi.dart';
// import 'package:khawi/classes/tourist.dart';
// import 'package:khawi/constants.dart';
// import 'package:khawi/components/khawiBottomNaBar.dart';
// import '../classes/offer.dart';
//
// class OfferBox extends StatefulWidget {
//   String title;
//   String description;
//   double price;
//   final Khawi khawi;
//   String city;
//   Tourist? tourist;
//
//   OfferBox(Key? key, this.title, this.price, String name, String city, double? rate) :
//
//         super(key: key);
//
//
//
//   @override
//   State<OfferBox> createState() => _OfferBoxState();
// }
//
// class _OfferBoxState extends State<OfferBox> {
//   @override
//
//   Container build(BuildContext context) {
//     // return Container(
//     //     String title, double price, String name, String city, double? rate) {
//       return Container(
//         width: double.infinity,
//         height: 200,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//           color: Colors.white,
//         ),
//         margin: EdgeInsets.all(10),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 children: [
//                   Text(
//                     "$title",
//                     style: TextStyle(color: Colors.black, fontSize: 30),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Text(
//                     "$name",
//                     style: TextStyle(fontSize: 15, color: Colors.blueGrey),
//                   ),
//                   Row(
//                     children: [
//                       Icon(
//                         Icons.star,
//                         color: Colors.yellow,
//                       ),
//                       Text("$rate"),
//                     ],
//                   ),
//                   Text("$city"),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text(
//                 "$price SR",
//                 style: TextStyle(color: Colors.green, fontSize: 30),
//               ),
//             ),
//           ],
//         ),
//       );
//     };
//
//   }
// }
