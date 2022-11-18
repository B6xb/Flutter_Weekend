import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:khawi/classes/package.dart';
import 'package:khawi/util/database.dart';

final packagesProvider =
    FutureProvider<List<Package>>((ref) async => Database.getAllPackages());
