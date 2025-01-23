import 'dart:async';

import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectionInternet {
  Future<bool> isInternet() async {
    return await InternetConnectionChecker().hasConnection;
  }
}
