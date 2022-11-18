import 'package:flutter/material.dart';
import 'package.dart';

class Tourist {
  String _name;
  Image _picture;
  String _bio;
  final String _email;
  String _password;
  String _nationality;
  String _gender;
  String _birthDate;
  double _rate;
  final String _accountCreationTime;
  Package _currentPackage;

  Tourist(
      String name,
      Image picture,
      String bio,
      String email,
      String password,
      String accountCreationTime,
      String nationality,
      String birthDate,
      String gender,
      double rate,
      Package currentPackage)
      : _name = name,
        _picture = picture,
        _bio = bio,
        _password = password,
        _nationality = nationality,
        _birthDate = birthDate,
        _gender = gender,
        _rate = rate,
        _accountCreationTime = accountCreationTime,
        _email = email,
        _currentPackage = currentPackage;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  Image get picture => _picture;

  set picture(Image value) {
    _picture = value;
  }

  String get bio => _bio;

  set bio(String value) {
    _bio = value;
  }

  String get email => _email;

  String get password => _password;

  set password(String value) {
    _password = value;
  }

  String get nationality => _nationality;

  set nationality(String value) {
    _nationality = value;
  }

  String get gender => _gender;

  set gender(String value) {
    _gender = value;
  }

  String get birthDate => _birthDate;

  set birthDate(String value) {
    _birthDate = value;
  }

  double get rate => _rate;

  set rate(double value) {
    _rate = value;
  }

  String get accountCreationTime => _accountCreationTime;

  Package get currentPackage => _currentPackage;

  set currentPackage(Package value) {
    _currentPackage = value;
  }
}
