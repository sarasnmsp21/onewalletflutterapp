import 'package:flutter/widgets.dart';
import './screens/otp_screen/otp_page.dart';
import './screens/home_screen/home_page.dart';
import './screens/login_screen/login_page.dart';
import './screens/firstuser_login_screen/firstuser_login_page.dart';
import './screens/welcome_screen/welcome_page.dart';

final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/": (BuildContext context) => WelcomePage(),
  "/signup": (BuildContext context) => SingUpPage(),
  "/login": (BuildContext context) => LoginPage(),
  "/home": (BuildContext context) => HomePage(),
  "/enterotp": (BuildContext context) => EnterOtpPage(),
};
