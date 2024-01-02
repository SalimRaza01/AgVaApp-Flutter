// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TermsCondition extends StatefulWidget {
  const TermsCondition();

  @override
  State<TermsCondition> createState() => _TermsConditionState();
}

class _TermsConditionState extends State<TermsCondition> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.only(left: 45),
                child: Text(
                  'Terms and Conditions',
                  style: TextStyle(
                      fontFamily: 'Avenir',
                      fontSize: 30,
                      color: Color.fromARGB(255, 157, 0, 86),
                    ),
                  textAlign: TextAlign.justify, // Set text alignment to justify
                ),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
