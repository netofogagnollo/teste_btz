import 'package:beamer/beamer.dart';
import 'package:btz/features/adm/presentation/adm_page.dart';
import 'package:flutter/material.dart';

class AdmLocation extends BeamLocation<BeamState> {
  AdmLocation({RouteInformation? routeInformation}) : super(routeInformation);

  @override
  List<String> get pathPatterns => ['/adm'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      const BeamPage(
        key: ValueKey('adm'),
        title: 'Administração',
        child: AdmPage(),
      ),
    ];
  }
}
