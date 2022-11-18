import 'package:flutter/material.dart';
import 'khawi.dart';
import 'tourist.dart';

class Offer {
  String _title;
  String _description;
  double _price;
  Khawi _khawi;
  List<Tourist> _tourist;
  String _city;

  Offer(String title, String description, double price, Khawi khawi,
      List<Tourist> tourist, String city)
      : _title = title,
        _description = description,
        _price = price,
        _khawi = khawi,
        _tourist = tourist,
        _city = city;

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  double get price => _price;

  set price(double value) {
    _price = value;
  }

  Khawi get khawi => _khawi;

  set khawi(Khawi value) {
    _khawi = value;
  }

  List<Tourist> get tourist => _tourist;

  set tourist(List<Tourist> value) {
    _tourist = value;
  }

  String get city => _city;

  set city(String value) {
    _city = value;
  }
}
