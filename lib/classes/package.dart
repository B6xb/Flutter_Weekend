import 'package:flutter/material.dart';

class Package {
  String _title;
  int _numberOfDays;
  int _numberOfReservations;
  double _price;

  Package(String title, int numOfDays, int numOfReserations, double price)
      : _title = title,
        _numberOfDays = numOfDays,
        _numberOfReservations = numOfReserations,
        _price = price;

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  int get numberOfDays => _numberOfDays;

  set numberOfDays(int value) {
    _numberOfDays = value;
  }

  int get numberOfReservations => _numberOfReservations;

  set numberOfReservations(int value) {
    _numberOfReservations = value;
  }

  double get price => _price;

  set price(double value) {
    _price = value;
  }
}
