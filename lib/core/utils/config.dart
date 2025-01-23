import 'package:btz/core/utils/custom_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

class Config {
  static String url() {
    var url = '';
    return (url);
  }

  static void configLoading() async {
    // if (kReleaseMode) {
    //   await dotenv.load(fileName: ".env");
    // } else {
    //   await dotenv.load(fileName: ".env.dev");
    // }
    // var configUxcam = FlutterUxConfig(
    //   userAppKey: dotenv.env['UXCAM_KEY'] ?? '',
    //   enableAutomaticScreenNameTagging: false,
    // );
    // FlutterUxcam.optIntoSchematicRecordings();
    // FlutterUxcam.startWithConfiguration(configUxcam);
    // Modular.setObservers([FlutterUxcamNavigatorObserver()]);

    EasyLoading.instance
      ..displayDuration = const Duration(milliseconds: 2000)
      ..indicatorType = EasyLoadingIndicatorType.circle
      ..loadingStyle = EasyLoadingStyle.custom
      ..indicatorSize = 45.0
      ..radius = 10.0
      ..maskType = EasyLoadingMaskType.black
      ..progressColor = Colors.yellow
      ..backgroundColor = const Color.fromARGB(255, 51, 138, 54)
      ..indicatorColor = Colors.white
      ..textColor = Colors.white
      ..maskColor = Colors.blue.withAlpha(5)
      ..userInteractions = true
      ..dismissOnTap = true
      ..customAnimation = CustomAnimation();
  }
}
