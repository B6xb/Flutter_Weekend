import 'package:flutter/material.dart';
import 'package:khawi/classes/khawi.dart';
import 'package:khawi/classes/tourist.dart';
import 'package:khawi/constants.dart';
import 'package:khawi/components/khawiBottomNaBar.dart';
import '../classes/offer.dart';

class OfferBox extends StatefulWidget {
  Offer offer;

  OfferBox({Key? key, required this.offer}) : super(key: key);

  @override
  State<OfferBox> createState() => _OfferBoxState();
}

class _OfferBoxState extends State<OfferBox> {
  @override
  Container build(BuildContext context) {
    // return Container(
    //     String title, double price, String name, String city, double? rate) {
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
                  widget.offer.title,
                  style: TextStyle(color: Colors.black, fontSize: 30),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.offer.khawi.name,
                  style: const TextStyle(fontSize: 15, color: Colors.blueGrey),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text("${widget.offer.khawi.rate ?? "Unrated"}"),
                  ],
                ),
                Text(widget.offer.city),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "${widget.offer.price ?? 0} SR",
              style: const TextStyle(color: Colors.green, fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}
