import 'package:course_helper/color_utils.dart';
import 'package:course_helper/screens/navigation.dart';
import 'package:course_helper/screens/signup_screen.dart';
import 'package:flutter/material.dart';

import '../reusable_widget.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: LinearGradient(colors: [
          hexStringToColor("12ba06"),
          hexStringToColor("#f2e600"),
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, MediaQuery
                .of(context)
                .size
                .height * 0.2, 20, 0),
            child: Column(
              children: <Widget>[
                Image.asset("assets/images/original.png", height: 150, width: 150,),
                SizedBox(
                  height: 30,
                ),
                reusableTextField("Enter Username", Icons.person_outline, false,
                    _emailTextController),
                SizedBox(
                  height: 20,
                ),
                reusableTextField("Enter Password", Icons.lock_outline, true,
                    _passwordTextController),
                SizedBox(
                  height: 20,
                ),
                SignButton(context, true, () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Navigation()));
                }),
                signUpOption(),
              ],
            ),
          ),
        ),),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("Don't have an account?",
            style: TextStyle(color: Colors.white)),
        GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SignUp()));
          },
          child: const Text(
            " Sign Up",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}

