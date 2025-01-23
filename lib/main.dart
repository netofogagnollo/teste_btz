import 'package:btz/core/app/app_module.dart';
import 'package:btz/core/app/app_widget.dart';
import 'package:btz/core/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Config.configLoading();
  // Execute App
  // database();

  runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
