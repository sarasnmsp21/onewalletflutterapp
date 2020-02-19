import 'package:flutter/foundation.dart';

class BillDetails {
  String billname;
  int billamount;
  dynamic billduedate;

  BillDetails({
    @required this.billname,
    @required this.billamount,
    @required this.billduedate,
  });
}

