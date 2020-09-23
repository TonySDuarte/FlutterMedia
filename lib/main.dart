import 'package:custom_splash/custom_splash.dart';
import 'package:FlutterMedia/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(FlutterMedia());
}

class FlutterMedia extends StatelessWidget {
  const FlutterMedia({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //tela splash
    return MaterialApp(
      home: CustomSplash(
        backGroundColor: const Color.fromARGB(255, 56, 128, 255),
        imagePath: 'assets/icon/camera.png',
        duration: 2000,
        home: WelcomeScreen(),
        type: CustomSplashType.StaticDuration,
      ),
    );
  }
}
