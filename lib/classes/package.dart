import 'package:cloud_firestore/cloud_firestore.dart';

class Package {
  String title;
  int numberOfDays;
  int numberOfReservations;
  double price;

  Package(
      {required this.title,
      required this.numberOfDays,
      required this.numberOfReservations,
      required this.price});

  factory Package.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    return Package(
      title: data?['title'],
      numberOfDays: data?['numberOfDays'],
      numberOfReservations: data?['numberOfReservations'],
      price: data?['price'],
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      "title": title,
      "numberOfDays": numberOfDays,
      "numberOfReservations": numberOfReservations,
      "price": price,
    };
  }
}
