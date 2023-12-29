// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './SignUp.dart';
import '../Screens/HomeScreen.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.white, Colors.white])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(alignment: Alignment.center, children: [
            Container(
                alignment: Alignment.center,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 120,
                      ),
                      Text(
                        "AgVa",
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 60,
                          color: Color.fromARGB(255, 157, 0, 86),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: TextFormField(
                         style: TextStyle(color: Colors.black87),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Colors.black87,
                            ),
                            hintText: 'Enter your email',
                            hintStyle: TextStyle(color: Colors.black45),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: TextFormField(
                          obscureText: passwordVisible,
                          style: TextStyle(color: Colors.black87),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.lock,
                              color: Colors.black87,
                            ),
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(color: Colors.black45),
                            suffixIcon: IconButton(
                              icon: Icon(passwordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off),
                              onPressed: () {
                                setState(
                                  () {
                                    passwordVisible = !passwordVisible;
                                  },
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(230, 20, 0, 0),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignIn(),
                                  ),
                                );
                              },
                              child: Text(
                                "Forget Password ?",
                                style: TextStyle(
                                    color: Colors.black87, fontSize: 14),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 22, 0),
                        child: Container(
                          height: 45,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 3,
                                  blurRadius: 20,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 218, 0, 138),
                                    Color.fromARGB(255, 142, 0, 90)
                                  ])),
                          child: TextButton(
                            style: TextButton.styleFrom(),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "SIGN IN",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 22, 0),
                        child: Container(
                          height: 45,
                          width: 300,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  spreadRadius: 3,
                                  blurRadius: 20,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              color: Colors.white,
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Color.fromARGB(255, 255, 255, 255),
                                    Color.fromARGB(255, 255, 255, 255)
                                  ])),
                          child: TextButton(
                            style: TextButton.styleFrom(),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignUp(),
                                ),
                              );
                            },
                            child: Text(
                              "SIGN UP",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 157, 0, 86),
                                  fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ]))
          ])),
    );
  }
}
