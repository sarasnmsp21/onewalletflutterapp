import 'package:flutter/material.dart';
import './bill_to_pay_model.dart';

class BillToPayList with ChangeNotifier {
  List<BillToPay> _items = [
    BillToPay(title: 'title1', subtitle: 'subtitle', icon: Icons.chevron_left),
    BillToPay(title: 'title1', subtitle: 'subtitle', icon: Icons.chevron_left),
  ];

  List<BillToPay> get items {
    return (_items);
  }

  // BillToPay findById(String id) {
  //   return _items.firstWhere((prod) => prod.id == id);
  // }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
