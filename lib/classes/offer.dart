import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'khawi.dart';
import 'tourist.dart';

class Offer {
  String title;
  String description;
  double price;
  final Khawi khawi;
  String city;
  List<Tourist>? tourists;

  Offer(
      {required this.title,
      required this.description,
      required this.price,
      required this.khawi,
      required this.city});

  factory Offer.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    var offer = Offer(
      title: data?['title'],
      description: data?['description'],
      price: data?['price'],
      khawi: data?['khawi'],
      city: data?['city'],
    );
    offer.tourists =
        data?['tourists'] is Iterable ? List.from(data?['tourists']) : null;
    return offer;
  }

  Map<String, dynamic> toFirestore() {
    return {
      "title": title,
      "description": description,
      "price": price,
      "khawi": khawi,
      "city": city,
      if (tourists != null) "tourists": tourists,
    };
  }
}
