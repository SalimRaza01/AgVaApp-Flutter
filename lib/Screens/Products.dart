// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            Container(
                    height: 300,
                        width: 200,
              child: Padding(
                padding: const EdgeInsets.only(top: 16, left: 30, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 140, bottom: 20),
                              child: Container(
                                height: 60,
                                width: 60,
                                child: Image.asset(
                                  "assets/images/AgVaPro2.png",
                                ),
                              ),
                            ),
                            Text(
                              // deviceData['deviceId'],
                              'DeviceType',
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                color: Color.fromARGB(255, 58, 58, 58),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

              
                // String getImagePath(String message) {
                //   switch (message) {
                //     case 'ACTIVE':
                //       return "assets/images/active.png";
                //     case 'INACTIVE':
                //       return "assets/images/inactive.png";
                //     default:
                //       return "assets/images/inactive.png";
                //   }
                // }
            