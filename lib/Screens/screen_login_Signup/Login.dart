import 'package:ff1/Screens/Home/Home.dart';
import 'package:ff1/Screens/screen_login_Signup/Forgot.dart';
import 'package:ff1/Screens/screen_login_Signup/Signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../config/config.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE8E8E8),
      appBar: AppBar(
        backgroundColor: Color(0xFFE8E8E8),
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back_ios_sharp,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10),
                  child: Text(
                    "Login in to your \n account",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: prykcolor),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          height: 55,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.mail),
                              labelText: "Email",
                              labelStyle: TextStyle(
                                fontSize: 20,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          height: 55,
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.password),
                              labelText: "Password",
                              labelStyle: TextStyle(
                                fontSize: 20,
                              ),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20.0))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: MaterialButton(
                  onPressed: () {
                    pop(context, Home());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(40),
                      ),
                      color: prykcolor,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 13,
                        bottom: 13,
                      ),
                      child: Text(
                        'Log in ',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              TextButton(
                  onPressed: () {
                    push(context, ForgotPassword());
                  },
                  child: Text(
                    "Forgot your password ?",
                    style: TextStyle(color: prykcolor),
                  )),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "By Clicking Sign Up agree to the out ",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "  termes and Condition",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account "),
                    TextButton(
                        onPressed: () {
                          pop(context, SignUp());
                        },
                        child: Text(
                          "Sign up ",
                          style: TextStyle(color: prykcolor),
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
