import 'package:flutter/material.dart';
import 'package:pin_input_text_field/pin_input_text_field.dart';

class Otpfield extends StatefulWidget {
  @override
  _OtpfieldState createState() => _OtpfieldState();
}

class _OtpfieldState extends State<Otpfield> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.0,
      width: MediaQuery.of(context).size.width,
      child: new Card(
        color: Colors.white,
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 20.0,
                  ),
                  PinInputTextField(
                    pinLength: 6,
                    autoFocus: false,
                    textInputAction: TextInputAction.go,
                    decoration: BoxLooseDecoration(
                        obscureStyle: ObscureStyle(isTextObscure: true)),
                    onSubmit: (pin) {
                      debugPrint('submit pin:$pin');
                    },
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    textColor: Colors.white,
                    color: Colors.orange,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 15.0, 10.0, 20.0),
                        child: Text(
                          'SUBMIT',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
                    child: Text(
                      'Not received code? Resend',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 10),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
