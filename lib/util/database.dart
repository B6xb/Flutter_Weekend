import 'package:khawi/util/firebase_service.dart';
import 'package:khawi/classes/package.dart';

class Database {
  static Future<List<Package>> getAllPackages() async {
    final db = firebase_service.firestore;
    db.collection("package").get();

    final packageRef = db.collection("package").withConverter(
          fromFirestore: Package.fromFirestore,
          toFirestore: (Package package, _) => package.toFirestore(),
        );
    final docSnap = await packageRef.get();
    final packageList =
        docSnap.docs.map((e) => e.data()).toList(); // Convert to City object
    return await packageList;
  }
}
