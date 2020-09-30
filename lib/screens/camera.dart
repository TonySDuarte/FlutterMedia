import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  File imagem;
  File imageTemporaria;

  void pegarImagemGaleria() async {
    // ignore: deprecated_member_use
    imageTemporaria = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imagem = imageTemporaria;
    });
  }

  void pegarImagemCamera() async {
    // ignore: deprecated_member_use
    imageTemporaria = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {
      imagem = imageTemporaria;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
              child: Container(
            child: imagem != null
                ? Image.file(imagem)
                : Center(
                    child: Text('Selecionar imagem'),
                  ),
          )),
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: () {
                  pegarImagemCamera();
                },
              ),
              IconButton(
                icon: Icon(Icons.image),
                onPressed: () {
                  pegarImagemGaleria();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
