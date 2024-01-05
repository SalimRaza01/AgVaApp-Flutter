import 'package:agva_app/Screens/DeviceDetails.dart';
import 'package:flutter/material.dart';
import 'AuthScreens/SignIn.dart';
import 'AuthScreens/SignUp.dart';
import 'AuthScreens/SplashScreen.dart';
import 'Screens/HomeScreen.dart';
import 'Screens/TermsCondition.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        "/home": (context) => HomeScreen({}),
        "/devicedetails": (context) => DeviceDetails(),
             "/tandc": (context) => TermsCondition(),
      },
    );
  }
}
