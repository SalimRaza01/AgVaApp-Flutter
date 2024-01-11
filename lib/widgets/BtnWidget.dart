// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BtnWidget extends StatelessWidget {
  const BtnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        alignment: Alignment.center,
        height: 32,
        width: 98,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.6),
              blurRadius: 10,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.white,
        ),
        child: Text(
          'Events',
          style: TextStyle(
            color: Color.fromARGB(221, 69, 69, 69),
          ),
        ),
      ),
    );
  }
}
