import 'package:flutter/material.dart';
import '../home_screen/home_components/top_title_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      // Top title Row1
      Row(
        children: <Widget>[
          Container(
            child: HomeTopTitle(),
          )
        ],
      ),
      // Row1 End

// Bill to pay section
      Row(
        children: <Widget>[
          Row()
        ],
      ),
    ]);
  }
}
