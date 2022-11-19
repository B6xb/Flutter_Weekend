import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:khawi/classes/khawi.dart';
import 'package:khawi/classes/offer.dart';
import 'package:khawi/classes/tourist.dart';
import 'package:khawi/util/firebase_service.dart';
import 'package:khawi/classes/package.dart';

class Database {
  static final db = firebase_service.firestore;
  static final packageRef = db.collection("package").withConverter(
        fromFirestore: Package.fromFirestore,
        toFirestore: (Package package, _) => package.toFirestore(),
      );
  static final offerRef = db.collection("offer").withConverter(
        fromFirestore: Offer.fromFirestore,
        toFirestore: (Offer offer, _) => offer.toFirestore(),
      );
  static final touristRef = db.collection("tourist").withConverter(
        fromFirestore: Tourist.fromFirestore,
        toFirestore: (Tourist tourist, _) => tourist.toFirestore(),
      );

  static Future<List<Package>> getAllPackages() async {
    final docSnap = await packageRef.get();
    return docSnap.docs.map((e) => e.data()).toList();
  }

  static Future<List<Offer>> getAllOffers() async {
    final docSnap =
        await offerRef.orderBy("creationDateTime", descending: true).get();
    return docSnap.docs.map((e) => e.data()).toList();
  }

  static Future<List<Offer>> getOffersByTourist(Tourist otherTourist) async {
    final docSnap =
        await offerRef.where("tourist", isEqualTo: otherTourist).get();
    return docSnap.docs.map((e) => e.data()).toList();
  }

  static Future<Tourist> getTouristByEmail(String otherEmail) async {
    final docSnap =
        await touristRef.where("email", isEqualTo: otherEmail).get();
    return docSnap.docs.map((e) => e.data()).toList()[0];
  }

  static Future<DocumentReference<Offer>> addOffer(Offer offer) async {
    return await offerRef.add(offer);
  }

  static Future<DocumentReference<Tourist>> addTourist(Tourist tourist) async {
    return await touristRef.add(tourist);
  }

  // static Future<DocumentReference<Tourist>>
}
