import 'package:flutter/material.dart';

class SingUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUp(),
    );
  }
}

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  String emailValidatorFunc(String email) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (email.length == 0) {
      return "Name is Required";
    } else if (!regExp.hasMatch(email)) {
      return "Invalid Email";
    } else {
      return null;
    }
  }

  String passwordValidatorFunc(String password) {
    if (password.isEmpty) {
      return 'Phone Number is Required';
    }
    //  else if (password.length < 4) {
    //   return 'Password is too short';
    // }
    else {
      return null;
    }
  }

  bool _autoValidate = false;

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
              height: MediaQuery.of(context).size.height * .35,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  gradient: new LinearGradient(
                      colors: [
                        Colors.blue.shade500,
                        Colors.blue.shade800,
                      ],
                      stops: [
                        0.0,
                        1.0
                      ],
                      begin: FractionalOffset.centerLeft,
                      end: FractionalOffset.centerRight,
                      tileMode: TileMode.repeated),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25))),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Icon(
                      Icons.arrow_left,
                      color: Colors.white,
                      size: 40,
                    ),
                    Text('Sign Up',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white)),
                    const SizedBox(height: 10),
                    Text('For first time users',
                        style: TextStyle(fontSize: 15, color: Colors.white)),
                  ],
                ),
              ),
            ),
          ],
        ),
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).size.height * .28,
              right: 20.0,
              left: 20.0),
          child: new Container(
            height: 450.0,
            width: MediaQuery.of(context).size.width,
            child: new Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Form(
                      key: _formKey,
                      autovalidate: true,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // Radio(

                            // ),
                            TextFormField(
                              autovalidate: _autoValidate,
                              validator: emailValidatorFunc,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade200,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                prefixIcon: Icon(Icons.person),
                                hintText: "Full Name",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                              initialValue: '',
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            TextFormField(
                              autovalidate: _autoValidate,
                              obscureText: true,
                              validator: passwordValidatorFunc,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                prefixIcon: Icon(Icons.phone_android),
                                hintText: "Phone Number",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                              ),
                              initialValue: '',
                              keyboardType: TextInputType.emailAddress,
                            ),
                            SizedBox(
                              height: 20.0,
                            ),
                            RaisedButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              onPressed: () {
                                Navigator.pushNamed(context, '/enterotp');
                              },
                              padding: const EdgeInsets.fromLTRB(0.0, 0, 00, 0),
                              textColor: Colors.white,
                              color: Colors.orange,
                              child: Container(
                                padding: const EdgeInsets.fromLTRB(
                                    100.0, 10, 100, 10),
                                decoration: const BoxDecoration(),
                                child: const Text('SEND OTP',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
                              child: Text(
                                'By signing up, you accept our Terms of Service and Privacy Policy',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              color: Colors.white,
              elevation: 4.0,
            ),
          ),
        )
      ],
    );
  }
}
