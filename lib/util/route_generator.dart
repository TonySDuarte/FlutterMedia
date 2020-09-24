import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
// import 'package:FlutterMedia/login.dart';
import 'package:FlutterMedia/screens/welcome.dart';

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute<dynamic>(
            builder: (_) => CustomSplash(
                  backGroundColor: const Color.fromARGB(255, 56, 128, 255),
                  imagePath: 'assets/icon/camera.png',
                  home: WelcomeScreen(),
                  duration: 2000,
                  type: CustomSplashType.StaticDuration,
                ));
      case '/welcome':
        return MaterialPageRoute<dynamic>(
          builder: (context) => WelcomeScreen(),
        );

      // *ROTA PARA A PAGINA DE LOGIN
      // case '/login':
      //   return MaterialPageRoute<dynamic>(
      //     builder: (context) => Login(),
      //   );
      default:
        return _erroRoute();
    }
  }

  static Route _erroRoute() => MaterialPageRoute<dynamic>(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: const Text('Página de erro'),
          ),
          body: const Center(
            child: Text('Página não encontrada para a condição informada.'),
          ),
        ),
      );
}
