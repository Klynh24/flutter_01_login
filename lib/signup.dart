import 'package:flutter/material.dart';
import 'package:flutter01_login/main.dart';

void main() {
  runApp(SignUp());
}

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _showPass = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
          constraints: BoxConstraints.expand(),
          color: Colors.transparent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Center(
                  child: Container(
                    width: 80,
                    height: 80,
                    padding: EdgeInsets.all(0),
                    child: Image.asset(
                      'assets/login_logo.png',
                      fit: BoxFit.contain,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ),
              Text(
                "Sign Up",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 35,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 35),
                child: Text(
                  "Enter your credentials to continue",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: TextField(
                  style: TextStyle(fontSize: 19, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 175, 171, 171),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: TextField(
                  style: TextStyle(fontSize: 19, color: Colors.black),
                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: const Color.fromARGB(255, 175, 171, 171),
                      fontSize: 20,
                    ),
                    suffixIcon: Icon(Icons.check),
                  ),
                ),
              ),
              Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                    child: TextField(
                      style: TextStyle(fontSize: 19, color: Colors.black),
                      obscureText: !_showPass,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                          color: const Color.fromARGB(255, 175, 171, 171),
                          fontSize: 20,
                        ),
                        suffixIcon: GestureDetector(
                          onTap: onToggleShowPass,
                          child: Icon(Icons.visibility_off),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Colors.black,
                        fontSize: 17,
                      ),
                      children: [
                        TextSpan(text: "By continuing you agree our "),
                        TextSpan(
                          text: "Terms of Service",
                          style: TextStyle(
                            color: Color.fromARGB(255, 98, 175, 143),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(text: " and "),
                        TextSpan(
                          text: "Privacy",
                          style: TextStyle(
                            color: Color.fromARGB(255, 98, 175, 143),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(text: "."),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                  child: SizedBox(
                    width: double.infinity,
                    height: 65,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                          255,
                          98,
                          175,
                          143,
                        ),
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: onLogInClicked,
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: onLogInClicked,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Already have an account?",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromARGB(255, 98, 175, 143),
                            fontSize: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onToggleShowPass() {
    setState(() {
      _showPass = !_showPass;
    });
  }

  void onLogInClicked() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => LogIn()));
  }

  Widget gotoLogIn(BuildContext context) {
    return LogIn();
  }

  void onSignUpClicked() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }

  Widget gotoSignUp(BuildContext context) {
    return SignUp();
  }
}
