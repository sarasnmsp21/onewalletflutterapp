import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class BillToPay with ChangeNotifier {
  final String title;
  final String subtitle;
  final IconData icon;

  BillToPay(
      {@required this.title, @required this.subtitle, @required this.icon});
}
