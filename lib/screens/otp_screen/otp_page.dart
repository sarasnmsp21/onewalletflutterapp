import 'package:flutter/material.dart';
import '../otp_screen/otp_components/top_title_widget.dart';
import '../otp_screen/otp_components/middle_content_widget.dart';

class EnterOtpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EnterOtp(),
    );
  }
}

class EnterOtp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[topContent(BuildContext, context)],
        ),
        new Container(
            alignment: Alignment.topCenter,
            padding: new EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .28,
                right: 20.0,
                left: 20.0),
            child: Otpfield())
      ],
    );
  }
}
