import 'package:beamer/beamer.dart';
import 'package:btz/core/default_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'injection_container.dart' as injection_container;

GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
final GlobalKey<ScaffoldMessengerState> snackbarKey = GlobalKey<ScaffoldMessengerState>();
void main() async {
  runApp(const SplashWrapper());
}

// Widget para carregar a splash e depois iniciar a MainApp
class SplashWrapper extends StatefulWidget {
  const SplashWrapper({super.key});

  @override
  State<SplashWrapper> createState() => _SplashWrapperState();
}

class _SplashWrapperState extends State<SplashWrapper> {
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadResources();
  }

  Future<void> _loadResources() async {
    // Simula o carregamento inicial (exemplo: carregar configs, etc)
    WidgetsFlutterBinding.ensureInitialized();
    await injection_container.init(); // Chama o método de inicialização do GetIt
    await Future.delayed(const Duration(seconds: 3));
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return _isLoading ? const SplashScreen() : MainApp(injection_container.sl());
  }
}

// Splash Screen Widget
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeDefault,
      home: const Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: Image(image: AssetImage('assets/logo.png'))),
      ),
    );
  }
}

// Aplicativo principal com Beamer para navegação
class MainApp extends StatelessWidget {
  final BeamerDelegate routerDelegate;
  const MainApp(this.routerDelegate, {super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: themeDefault,
      debugShowCheckedModeBanner: false,
      restorationScopeId: 'root',
      scaffoldMessengerKey: snackbarKey,
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher: BeamerBackButtonDispatcher(delegate: routerDelegate),
      supportedLocales: const [
        Locale('en', 'US'), // English United States
        Locale('pt', 'BR'), // Portuguese Brazil
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
