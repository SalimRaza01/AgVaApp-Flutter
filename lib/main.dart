import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'AuthScreens/SignUp.dart';
import 'AuthScreens/SignIn.dart';
import 'Screens/HomeScreen.dart';
import 'package:agva_app/AuthScreens/SplashScreen.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

void main() {
  runApp(
    MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider(
        create: (context) => AuthProvider(),
        child: MyApp(),
      ),
    ),
  );
}

class AuthProvider extends ChangeNotifier {
  String? _token;
  bool _isLoading = true;

  String? get token => _token;
  bool get isLoading => _isLoading;

  void setToken(String? value) {
    _token = value;
    _isLoading = false;
    notifyListeners();
  }

  bool get isAuthenticated => _token != null && !JwtDecoder.isExpired(_token!);
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
        "/home": (context) => HomeScreen(
              token: null,
            ),
      },
    );
  }
}
