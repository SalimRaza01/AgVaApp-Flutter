import 'package:flutter/material.dart';
import 'AuthScreens/SignUp.dart';
import 'AuthScreens/SignIn.dart';
import 'Screens/HomeScreen.dart';
import 'package:agva_app/AuthScreens/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/": (context) => HomeScreen(),
        "/signup": (context) => SignUp(),
        "/signin": (context) => SignIn(),
        "/splash": (context) => SplashScreen(),
      },
    );
  }
}
