import 'package:btz/routes/login_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:asuka/asuka.dart' as asuka;

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute(LoginModule.ROUTE);
    Modular.setNavigatorKey;
    // Modular.setObservers([asuka.asukaHeroController]);
    EasyLoading.init();

    return ScreenUtilInit(
      designSize: const Size(428, 926),
      builder: (context, child) => MaterialApp.router(
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        builder: EasyLoading.init(),

        supportedLocales: const [
          Locale('pt', 'BR'),
        ],
        debugShowCheckedModeBanner: false,
        title: 'Btz',
        // builder: asuka.builder,
        routerConfig: Modular.routerConfig,
      ),
    );
  }
}
