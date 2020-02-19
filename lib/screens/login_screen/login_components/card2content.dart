import 'package:flutter/material.dart';

class Card2Content extends StatefulWidget {
  @override
  _Card2ContentState createState() => _Card2ContentState();
}

class _Card2ContentState extends State<Card2Content> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String mobileValidatorFunc(String mobile) {
      String patttern = r'(^(?:[+0]9)?[0-9]{10}$)';
      RegExp regExp = new RegExp(patttern);
      if (mobile.length == 0) {
        return "Please enter mobile number";
      } else if (mobile.length != 10) {
        return "Mobile number must 10 digits";
      } else if (!regExp.hasMatch(mobile)) {
        return "Please enter valid mobile number";
      }
      return null;
    }

    bool _autoValidate = false;
    return Card(
      color: Colors.white,
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(20.0, 40.0, 20.0, 40.0),
            child: Form(
              key: _formKey,
              autovalidate: true,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  // Phone number input field
                  TextFormField(
                    autovalidate: _autoValidate,
                    validator: mobileValidatorFunc,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(
                        Icons.phone_android,
                        color: Colors.grey,
                      ),
                      hintText: "Phone Number",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide:
                            BorderSide(color: Color(0xFFF5F5F5), width: 1.0),
                      ),
                    ),
                  ),
                  // Input field End

                  SizedBox(
                    height: 30.0,
                  ),

                  // Send OTP button
                  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.pushNamed(context, '/enterotp');
                        _formKey.currentState.save();
                      } else {
                        // setState(() {
                        //   _autoValidate = true;
                        // });
                      }
                    },
                    textColor: Colors.white,
                    color: Colors.orange,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(20.0, 15.0, 10.0, 20.0),
                        child: Text(
                          'SEND OTP',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
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
        ],
      ),
    );
  }
}
