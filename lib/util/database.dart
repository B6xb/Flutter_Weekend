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
    final docSnap = await offerRef.orderBy().get();
    return docSnap.docs.map((e) => e.data()).toList();
  }

  // static Future<Offer> getOfferByTourist() async {
  //   final docSnap = touristRef;
  //   return 
  // }
}
