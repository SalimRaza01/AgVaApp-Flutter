// ignore_for_file: prefer_const_constructors, prefer_final_fields

import 'package:agva_app/AuthScreens/SignIn.dart';
import 'package:agva_app/Screens/RegDone.dart';
import 'package:agva_app/Screens/TandCScreen.dart';
import 'package:agva_app/config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool passwordVisible = false;
  bool _isNotValidate = false;
  bool first = false;

  TextEditingController fnameController = TextEditingController();
  TextEditingController lnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  void registerUser() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var regBody = {
        "email": emailController.text,
        "password": passwordController.text,
        "fname": fnameController.text,
        "lname": lnameController.text,
        "confirmPassword": confirmPasswordController.text,
      };

      var response = await http.post(
        Uri.parse(registration),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(regBody),
      );

      var jsonResponse = jsonDecode(response.body);
      print(jsonResponse);
      print(jsonResponse['status']);
         if (jsonResponse['status'] == true) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => RegDone()),
            );
          }
      else {
        print("Something Went Wrong");
      }
    } else {
      setState(() {
        _isNotValidate = true;
      });
    }
  }

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
            SingleChildScrollView(
              child: Container(
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
                            controller: fnameController,
                            style: TextStyle(color: Colors.black87),
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.black87,
                              ),
                              hintText: 'First Name',
                              errorText:
                                  _isNotValidate ? "Enter Proper Info" : null,
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
                            controller: lnameController,
                            style: TextStyle(color: Colors.black87),
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.person,
                                color: Colors.black87,
                              ),
                              hintText: 'Last Name',
                              errorText:
                                  _isNotValidate ? "Enter Proper Info" : null,
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
                            controller: emailController,
                            style: TextStyle(color: Colors.black87),
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.email,
                                color: Colors.black87,
                              ),
                              hintText: 'Enter your Email',
                              errorText:
                                  _isNotValidate ? "Enter Proper Info" : null,
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
                            controller: passwordController,
                            obscureText: passwordVisible,
                            style: TextStyle(color: Colors.black87),
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: Colors.black87,
                              ),
                              hintText: 'Enter your Password',
                              errorText:
                                  _isNotValidate ? "Enter Proper Info" : null,
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
                            controller: confirmPasswordController,
                            obscureText: passwordVisible,
                            style: TextStyle(color: Colors.black87),
                            decoration: InputDecoration(
                              icon: Icon(
                                Icons.lock,
                                color: Colors.black87,
                              ),
                              hintText: 'Confirm Password',
                              errorText:
                                  _isNotValidate ? "Enter Proper Info" : null,
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
                              value: first,
                              activeColor: const Color.fromARGB(255, 184, 46, 92),
                              checkColor: Colors.white,
                              onChanged: (bool? value) {
                                setState(() {
                                  first = value!;
                                });
                              },
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
                                    builder: (context) => TermsCondition(),
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
                              onPressed: registerUser,
                              style: TextButton.styleFrom(),
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
                            SizedBox(
                          height: 80,
                        ),
                      ])
                      
                      ),
                      
            )
          ])),
    );
  }
}
