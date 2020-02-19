import 'package:flutter/material.dart';
import './login_components/card2content.dart';
import './login_components/card1content.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        // Card1 content component start's from here
        Container(child: Card1Content()),

        // Card2 content Start's from here
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .28,
              right: 20.0,
              left: 20.0),
          child: Container(
            height: 260,
            width: MediaQuery.of(context).size.width,
            child: Card2Content(),
          ),
        ),
      ],
    );
  }
}
