import 'package:flutter/material.dart';
import 'package:onewalletapp/models/bill_to_pay_model.dart';

class BillToPaySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Bills to pay',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Icon(Icons.trending_flat)
          ],
        ),
        SizedBox(height: 20),
        Container(
          height: MediaQuery.of(context).copyWith().size.height / 5,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: billtopay.length,
              itemBuilder: (BuildContext context, int index) {
                Map bill = billtopay[index];
                return Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    color: bill['color'],
                  ),
                  height: 100.0,
                  width: 300.0,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(bill['name'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: Colors.white)),
                            Icon(
                              Icons.cancel,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Text(bill['amount'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white)),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('Due Date: ' + bill['date'],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15,
                                    color: Colors.white)),
                            Icon(
                              Icons.arrow_upward,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
