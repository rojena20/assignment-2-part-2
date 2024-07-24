import 'package:assign2_part2/course_page.dart';
import 'package:assign2_part2/models/course_page_model.dart';
import 'package:flutter/material.dart';

class FullstackCourse extends StatefulWidget {
  static const String routeName = "FullstackCourse";

  const FullstackCourse({super.key});

  @override
  State<FullstackCourse> createState() => _FullstackCourseState();
}

class _FullstackCourseState extends State<FullstackCourse> {
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
        body: CoursePage(
          coursePageModel:
              CoursePageModel(courseImage: "fullStack.jpeg", courseContent: '''
  •HTML	
  •HTML 5 
  •CSS
  •CSS3
  •SASS
  •Bootstrap 4
  •JavaScript
  •Regular expressions
  •ECMAScript 6
  •JQuery
  •angular 7
  •fabric.js
  •AJAX
  •JSON
  •Hosting and domains
  •Freelancing tips and tricks
  •PHP
  •MYSQL
  •MYSQL advanced queries and triggers
  •OOP 
  •Design Patterns
  •MVC
  •laravel 
  •build Api , Api authentication
  •connect wordpress with laravel
  •build wordpress web service 
  •agile
  •Scrum
  •Software development process
  '''),
        ),
      ),
    );
  }
}
