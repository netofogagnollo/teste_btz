// ignore_for_file: constant_identifier_names

import 'package:flutter/foundation.dart';

class AppConstants {
  static const String DATABASE_NAME = 'default';
  // static const String DATABASE_NAME =
  //     kDebugMode ? '1003_demonstracao@demonstracao.com.br_isar-db-1721741253768' : 'default';
  static const bool DISABLE_SYNC = kDebugMode ? false : false;

  static const String URL_ICEASA_BASE_API = '';

  static const double PEDIDO_ITEM_HEIGHT = 85;
  static const double COMPRA_ITEM_HEIGHT = 85;
  static const double LISTA_DE_COMPRA_ITEM_HEIGHT = 130;
}
