import 'package:flutter/material.dart';
import '../home_screen/home_components/top_title_widget.dart';
import '../home_screen/home_components/bill_to_pay_widget.dart';
import '../home_screen/home_components/household_bills_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(child: HomeTopTitle()),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                BillToPaySection(),
                SizedBox(height: 20),
                HouseHoldBills()
              ]),
        ),
      ],
    );
  }
}
