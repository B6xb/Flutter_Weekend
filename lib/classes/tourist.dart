import 'package:cloud_firestore/cloud_firestore.dart';

import 'package.dart';

class Tourist {
  // In constructor
  String name;
  final String email;
  final String nationality;
  final String gender;
  String? birthDate;
  final String accountCreationTime;
  // Not in constructor
  Package? currentPackage;
  String? bio;
  double? rate;

  Tourist(
      {required this.name,
      required this.email,
      required this.accountCreationTime,
      required this.nationality,
      this.birthDate,
      required this.gender});

  factory Tourist.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    var tourist = Tourist(
      name: data?['name'],
      email: data?['email'],
      accountCreationTime: data?['accountCreationTime'],
      nationality: data?['nationality'],
      birthDate: data?['birthDate'],
      gender: data?['gender'],
      // regions:
      // data?['regions'] is Iterable ? List.from(data?['regions']) : null,
    );
    tourist.bio = data?['bio'];
    tourist.currentPackage = data?['currentPackage'];
    tourist.rate = data?['rate'];
    return tourist;
  }

  Map<String, dynamic> toFirestore() {
    return {
      "name": name,
      "email": email,
      "accountCreationTime": accountCreationTime,
      "nationality": nationality,
      if (birthDate != null) "birthDate": birthDate,
      "gender": gender,
      if (bio != null) "bio": bio,
      if (currentPackage != null) "currentPackage": currentPackage,
      if (rate != null) "rate": rate,
    };
  }
}
