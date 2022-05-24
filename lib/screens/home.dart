import 'package:flutter/material.dart';
import '../reusable_widget.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
            padding: EdgeInsets.fromLTRB(25, MediaQuery.of(context).size.height * 0, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.height,
              ),
              Text("Welcome to Bxsci CourseHelper!", style: TextStyle(fontSize: 40, fontFamily: "LibreBaskerville", fontWeight: FontWeight.bold)),
              SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.height,
              ),
              Row(
                children: [
                  DepartmentWtCourses(context, "English Department", "flower.jpeg"),
                  DepartmentWtCourses(context, "Mathematics Department", "original.png")
                ],
              ),
              Row(
                children: [
                  DepartmentWtCourses(context, "Science Department", "original.png"),
                  DepartmentWtCourses(context, "History Department", "flower.jpeg"),
                ],
              ),
              Center(
                child: DepartmentWtCourses(context, "World Language Department", "original.png")
              ),
            ],
          ),
        )
      ),
      ),
    );
  }
}
