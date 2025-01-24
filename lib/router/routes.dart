import 'package:beamer/beamer.dart';
import 'package:btz/router/adm_location.dart';
import 'package:btz/router/home_location.dart';
import 'package:btz/router/login_location.dart';
import 'package:isar/isar.dart';

// Initialize your tracker
final NavigationHistoryTracker navigationHistoryTracker =
    NavigationHistoryTracker();

BeamerDelegate routerCreate(Isar isar) {
  final routerDelegate = BeamerDelegate(
    // guards: [
    //   authGuard,
    // ],
    initialPath: '/',
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        LoginLocation(),
        HomeLocation(),
        AdmLocation(),
      ],
    ).call,
    routeListener: (routeInformation, delegate) {
      navigationHistoryTracker
          .updateWithBeamingHistory(delegate.beamingHistory);
    },
  );

  //Authenticator(routerDelegate, isar);

  return routerDelegate;
}

class NavigationHistoryTracker {
  final List<String> _history = [];
  List<BeamLocation> _beamingHistory = [];

  List<String> get history => List.unmodifiable(_history);

  void updateWithBeamingHistory(List<BeamLocation> beamingHistory) {
    _history.clear();
    _beamingHistory = beamingHistory;
    //log('>>>>>> Beam History');
    for (BeamLocation location in _beamingHistory) {
      //_history.add(location.state.routeInformation.uri.toString());
      var str = location.state.routeInformation.uri.toString();
      _history.add(str);
      //log('>>>>>> $str');

      // Logging the BeamPages of the current location
      // for (var page in location.history) {
      //log('    ---->>>>>> ${(page.routeInformation.uri.toString())}');
      // }
    }
  }

  // void displayHistory() {
  //   var delegate = GetIt.instance.get<BeamerDelegate>();
  //   var history = delegate.currentBeamLocation.history;
  //   var locationPath = history[history.length - 1];
  //   var pathSegments = locationPath.routeInformation.uri.pathSegments;
  //   var canHistoryPop = history.length == 1 && pathSegments.length > 1;
  //   //  log('(1) ➔ canBeamBack: ${delegate.canBeamBack}');
  //   // log('(2) ➔ canHistoryPop: $canHistoryPop');
  //   // log('(3) ➔ canPopBeamLocation: ${delegate.canPopBeamLocation}');

  //   for (BeamLocation location in delegate.beamingHistory) {
  //     var str = location.state.routeInformation.uri.toString();
  //     //   log('➔ $str');
  //     for (var page in location.history) {
  //       //    log('   -- ${(page.routeInformation.uri.toString())}');
  //     }
  //   }
  // }
}
