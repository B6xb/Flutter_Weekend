import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:khawi/classes/package.dart';
import 'package:khawi/classes/tourist.dart';
import 'package:khawi/util/database.dart';
import 'package:khawi/getPage.dart';

final _userProvider = StreamProvider<User?>((ref) {
  return GetPage.authChange;
});

final userDataProvider = FutureProvider<Tourist?>((ref) {
  return ref.watch(_userProvider).when(
      data: (data) => Database.getTouristByEmail(data!.email!),
      error: ((error, stackTrace) => null),
      loading: (() => null));
});

