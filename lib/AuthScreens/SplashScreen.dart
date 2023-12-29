import 'dart:async';

import 'package:flutter/material.dart';
import './SignIn.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start a timer to navigate to SignIn screen after 2 seconds
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => SignIn()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  // Add the GIF here using the Image widget
                  Image.asset(
                    'AGVA.gif', // Replace with your GIF file path
                    height: 200,
                    width: 200,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
