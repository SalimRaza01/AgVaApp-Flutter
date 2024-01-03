// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './AuthScreens/SignIn.dart';
import './AuthScreens/SignUp.dart';
import './Screens/HomeScreen.dart';
import './AuthScreens/SplashScreen.dart';

void main() {
  runApp( const MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/signup": (context) => SignUp(),
        "/signin": (context) => SignIn(),
        "/splash": (context) => SplashScreen(),
        "/home": (context) => HomeScreen(),
      },
    );
  }
}
