import 'package:FlutterMedia/screens/voiceRecognition.dart';
import 'package:custom_splash/custom_splash.dart';
import 'package:flutter/material.dart';
import 'package:FlutterMedia/login.dart';
import 'package:FlutterMedia/screens/welcome.dart';
<<<<<<< HEAD
import 'package:FlutterMedia/screens/InitalPage.dart';
=======
import 'package:FlutterMedia/screens/qr_code.dart';
>>>>>>> scanner_qr

class RouterGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      // case '/':
      //   return MaterialPageRoute<dynamic>(
      //       builder: (_) => CustomSplash(
      //             backGroundColor: const Color.fromARGB(255, 56, 128, 255),
      //             imagePath: 'assets/icon/camera.png',
      //             home: WelcomeScreen(),
      //             duration: 2000,
      //             type: CustomSplashType.StaticDuration,
      //           ));
      // case '/welcome':
      //   return MaterialPageRoute<dynamic>(
      //     builder: (context) => WelcomeScreen(),
      //   );

<<<<<<< HEAD
      case '/initial':
        return MaterialPageRoute<dynamic>(
          builder: (context) => InitalPage(),
        );
      case '/voice':
        return MaterialPageRoute<dynamic>(
          builder: (context) => SpeechScreen(),
        );

      // *ROTA PARA A PAGINA DE LOGIN
      case '/login':
=======
      // case '/login':
      //   return MaterialPageRoute<dynamic>(
      //     builder: (context) => Login(),
      //   );

      case '/codeqr':
>>>>>>> scanner_qr
        return MaterialPageRoute<dynamic>(
          builder: (context) => QR_codePage(),
        );

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
