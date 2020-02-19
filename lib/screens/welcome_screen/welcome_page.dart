import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeScreen(),
    );
  }
}

// Welcome page
class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        // Container1 part start (i.e blue part)
        new Column(
          children: <Widget>[
            new Container(
              height: MediaQuery.of(context).size.height * .55,
              decoration: BoxDecoration(
                  gradient: new LinearGradient(colors: [
                    Colors.blue.shade500,
                    Colors.blue.shade800,
                  ]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Image.asset('assets/logo.png'),
            ),
          ],
        ),
        // Container1 End

        // Container2 part start
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .42,
              right: 20.0,
              left: 20.0),
          child: new Container(
            height: 265.0,
            width: MediaQuery.of(context).size.width,
            child: new Card(
              color: Colors.white,
              elevation: 4.0,

              // card border radius
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),

              // Inner card contains starts from here
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Welcome to OneWallet',
                        style: TextStyle(
                            height: 2,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    Text('The app for all your household bills'),

                    SizedBox(height: 80),

                    // Sign in button
                    RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      textColor: Colors.white,
                      color: Colors.orange,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Padding(
                          padding:
                              const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10),
                          child: Text(
                            'SIGN IN',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                    // Button End
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
