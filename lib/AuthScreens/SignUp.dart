// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'SignIn.dart';
import '../Screens/HomeScreen.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                    children: [
                      SizedBox(
                        height: 80,
                      ),
                      Text(
                        "AgVa",
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontSize: 40,
                          color: Color.fromARGB(255, 157, 0, 86),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 30),
                        child: TextFormField(
                          style: TextStyle(color: Colors.black87),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.black87,
                            ),
                            hintText: 'First Name',
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
                          style: TextStyle(color: Colors.black87),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person,
                              color: Colors.black87,
                            ),
                            hintText: 'Last Name',
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
                          style: TextStyle(color: Colors.black87),
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Colors.black87,
                            ),
                            hintText: 'Enter your Email',
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
                            hintText: 'Enter your Password',
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
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (newValue) {},
                            activeColor: Colors.blue,
                            checkColor: Colors.white,
                          ),
                          Text(
                            "I agree with ",
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignIn(),
                                ),
                              );
                              print('Terms and Conditions clicked');
                            },
                            child: Text(
                              "Terms and Conditions",
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 14,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
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
                              "SIGN UP",
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
                                  builder: (context) => SignIn(),
                                ),
                              );
                            },
                            child: Text(
                              "SIGN IN",
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
