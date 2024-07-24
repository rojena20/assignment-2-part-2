import 'package:assign2_part2/course_card.dart';
import 'package:assign2_part2/models/course_card_model.dart';
import 'package:flutter/material.dart';
import 'anroid_course.dart';
import 'fullStack_course.dart';
import 'ios_course.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 0, 31, 132),
          title: Text(
            "RouteAppOne",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: Column(
              children: [
                CourseCard(
                  courseCardModel: CourseCardModel(
                    image: "Android.jpeg",
                    courseName: "ANDROID COURSE",
                    cousrePage: AndroidCourse.routeName,
                  ),
                ),
                CourseCard(
                  courseCardModel: CourseCardModel(
                    image: "IOS.jpeg",
                    courseName: "IOS COURSE",
                    cousrePage: IosCourse.routeName,
                  ),
                ),
                CourseCard(
                  courseCardModel: CourseCardModel(
                    image: "fullStack.jpeg",
                    courseName: "FULL STACK",
                    cousrePage: FullstackCourse.routeName,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
