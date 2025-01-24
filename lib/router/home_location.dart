import 'package:beamer/beamer.dart';
import 'package:btz/features/home/presentation/home_page.dart';
import 'package:flutter/material.dart';

class HomeLocation extends BeamLocation<BeamState> {
  HomeLocation({RouteInformation? routeInformation}) : super(routeInformation);

  @override
  List<String> get pathPatterns => ['/home'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
        key: ValueKey('home'),
        title: 'Home Page',
        child: HomePage(),
      ),
    ];
  }
}
