// ignore_for_file: prefer_const_constructors,  missing_required_param

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'AuthScreens/SignIn.dart';
import 'AuthScreens/SignUp.dart';
import 'AuthScreens/SplashScreen.dart';
import 'Screens/HomeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(token: prefs.getString('token')));
}

class MyApp extends StatelessWidget {
  final token;
  const MyApp({
    @required this.token,
    Key? key,
  }) : super(key: key);

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
