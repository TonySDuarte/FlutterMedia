import 'package:custom_splash/custom_splash.dart';
import 'package:FlutterMedia/screens/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:FlutterMedia/util/route_generator.dart';

void main() {
  runApp(FlutterMedia());
}

class FlutterMedia extends StatelessWidget {
  const FlutterMedia({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //tela splash
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: RouterGenerator.generateRoute,
    );
  }
}
