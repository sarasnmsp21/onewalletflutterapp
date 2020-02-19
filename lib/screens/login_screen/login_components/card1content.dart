import 'package:flutter/material.dart';

class Card1Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 00),
      height: MediaQuery.of(context).size.height * .35,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          // for gradient colors to card
          gradient: new LinearGradient(colors: [
            Colors.blue.shade500,
            Colors.blue.shade800,
          ]),
          // for border radius
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25))),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.chevron_left,
                color: Colors.white,
                size: 40.0,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
            ),
            Text('Log In',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Colors.white)),
            const SizedBox(height: 10),
            Text('For registered users',
                style: TextStyle(fontSize: 15, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
