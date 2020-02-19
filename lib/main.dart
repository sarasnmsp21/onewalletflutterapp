import 'package:flutter/material.dart';
// import './theme/style.dart';
import './routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OneWallet App',
      // theme: appTheme(),
      routes: routes,
      initialRoute: '/',
    );
  }
}
