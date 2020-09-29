import 'package:FlutterMedia/util/codigoCamera.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

class InitalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Colors.blue,
              textColor: Colors.white,
              child: Text("Camera e Galeria"),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage()));
              },
            ),
            new RaisedButton(
              child: Text("qrCode"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {},
            ),
            new RaisedButton(
              child: Text("Gravador"),
              color: Colors.blue,
              textColor: Colors.white,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: const Text("Pagina inicial - pós login",
          style: TextStyle(color: Colors.black)),

      elevation: 0,
      // leading: IconButton(
      //   icon: SvgPicture.asset("assets/icon/back.svg"),
      //   onPressed: () {},
      // ),
    );
  }
}
