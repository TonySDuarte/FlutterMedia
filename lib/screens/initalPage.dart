import 'package:FlutterMedia/screens/qr_code.dart';
import 'package:FlutterMedia/screens/voiceRecognition.dart';
import 'package:FlutterMedia/screens/camera.dart';
import 'package:flutter/material.dart';

class InitalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina inicial"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Camera e Galeria"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            new RaisedButton(
              child: Text("Conversor de voz"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SpeechScreen()));
              },
            ),
            new RaisedButton(
              child: Text("        Scanner        "), //gambiarra
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => QR_codePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
