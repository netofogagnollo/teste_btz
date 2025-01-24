import 'package:beamer/beamer.dart';
import 'package:btz/features/login/presentation/login_page.dart';
import 'package:flutter/material.dart';

class LoginLocation extends BeamLocation<BeamState> {
  LoginLocation({RouteInformation? routeInformation}) : super(routeInformation);

  @override
  List<String> get pathPatterns => ['/'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
        key: ValueKey('root'),
        title: 'login',
        child: LoginPage(),
      ),
    ];
  }
}
