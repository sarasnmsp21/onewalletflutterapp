import 'package:flutter/material.dart';
// import 'package:onewalletapp/models/household_bills_model.dart';

class HouseHoldBills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              'Household Bills',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Icon(Icons.trending_flat)
          ],
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(40.0, 0.0, 40.0, 0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(8))),
                      child: Icon(
                        Icons.date_range,
                        color: Colors.blue[300],
                        size: 30,
                      ),
                      padding: EdgeInsets.all(12),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      "Electricity",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              // Container(
              //   child: Column(
              //     children: <Widget>[
              //       Container(
              //         decoration: BoxDecoration(
              //             color: Colors.white,
              //             borderRadius: BorderRadius.all(Radius.circular(8))),
              //         child: Icon(
              //           Icons.public,
              //           color: Colors.blue[300],
              //           size: 30,
              //         ),
              //         padding: EdgeInsets.all(12),
              //       ),
              //       SizedBox(
              //         height: 12,
              //       ),
              //       Text(
              //         "Newspaper",
              //         style: TextStyle(
              //             fontWeight: FontWeight.w700,
              //             fontSize: 14,
              //             color: Colors.black),
              //       ),
              //     ],
              //   ),
              // ),
              // Container(
              //   child: Column(
              //     children: <Widget>[
              //       Container(
              //         decoration: BoxDecoration(
              //             color: Colors.white,
              //             borderRadius: BorderRadius.all(Radius.circular(8))),
              //         child: Icon(
              //           Icons.trending_down,
              //           color: Colors.blue[300],
              //           size: 30,
              //         ),
              //         padding: EdgeInsets.all(12),
              //       ),
              //       SizedBox(
              //         height: 12,
              //       ),
              //       Text(
              //         "Milk",
              //         style: TextStyle(
              //             fontWeight: FontWeight.w700,
              //             fontSize: 14,
              //             color: Colors.black),
              //       ),
              //     ],
              //   ),
              // )
            ],
          ),
        ),
      ],
    );
  }
}
