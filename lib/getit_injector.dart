import 'package:btz/injection_container.dart';
import 'package:injectable/injectable.dart';

import 'getit_injector.config.dart';

@InjectableInit(throwOnMissingDependencies: false)
void configureDependencies() => sl.init();
