import 'package:course_helper/color_utils.dart';
import 'package:course_helper/reusable_widget.dart';
import 'package:course_helper/screens/navigation.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  TextEditingController _usernameTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Sign Up",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            hexStringToColor("12ba06"),
            hexStringToColor("#f2e600"),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: SingleChildScrollView(child: Padding(
          padding: EdgeInsets.fromLTRB(
              20, 120, 20, 0),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Username", Icons.person_outline, false,
                  _usernameTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Password", Icons.lock_outline, true,
                  _passwordTextController),
              const SizedBox(
                height: 20,
              ),
              reusableTextField("Enter Email", Icons.email_outlined, false,
                  _emailTextController),
              const SizedBox(
                height: 20,
              ),
              SignButton(context, false, (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Navigation()));
              })
            ],
          ),
        ),),
        ),
      );
  }
}
