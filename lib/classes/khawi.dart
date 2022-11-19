import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Khawi {
  // In constructor
  String name;
  String phoneNumber;
  final String email;
  final String nationality;
  final String gender;
  final DateTime accountCreationTime;
  String? birthDate;

  // Not in constructor
  String? bio;
  double? rate;

  Khawi(
      {required this.name,
      required this.phoneNumber,
      required this.email,
      required this.accountCreationTime,
      required this.nationality,
      this.birthDate,
      required this.gender});

  factory Khawi.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
    SnapshotOptions? options,
  ) {
    final data = snapshot.data();
    var khawi = Khawi(
      name: data?['name'],
      phoneNumber: data?['phoneNumber'],
      email: data?['email'],
      accountCreationTime: data?['accountCreationTime'],
      nationality: data?['nationality'],
      birthDate: data?['birthDate'],
      gender: data?['gender'],
    );
    khawi.bio = data?['bio'];
    khawi.rate = data?['rate'];
    return khawi;
  }

  Map<String, dynamic> toFirestore() {
    return {
      "name": name,
      "email": email,
      "phoneNumber": phoneNumber,
      "accountCreationTime": accountCreationTime,
      "nationality": nationality,
      if (birthDate != null) "birthDate": birthDate,
      "gender": gender,
      if (bio != null) "bio": bio,
      if (rate != null) "rate": rate,
    };
  }
}
