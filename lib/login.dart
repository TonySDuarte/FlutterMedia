import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 56, 128, 255),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Center(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextFormField(
                autofocus: true,
                keyboardType: TextInputType.emailAddress,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  labelText: "Email",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              Divider(),
              TextFormField(
                autofocus: true,
                obscureText: true,
                keyboardType: TextInputType.text,
                style: new TextStyle(color: Colors.white, fontSize: 20),
                decoration: InputDecoration(
                  focusColor: Colors.white,
                  labelText: "Senha",
                  labelStyle: TextStyle(color: Colors.black),
                ),
              ),
              Divider(),
              ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                  onPressed: () => {},
                  child: Text(
                    "Entrar",
                    style: TextStyle(
                      color: Color.fromARGB(255, 56, 128, 255),
                    ),
                  ),
                ),
              )
            ],
          )),
        ));
  }
}
