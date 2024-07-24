import 'package:flutter/material.dart';

import 'models/course_page_model.dart';

class CoursePage extends StatelessWidget {
  CoursePageModel coursePageModel;

  CoursePage({super.key, required this.coursePageModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Image.asset(
            coursePageModel.pageBG,
            fit: BoxFit.fill,
            height: double.infinity,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: Column(
              children: [
                Image.asset("assets/images/${coursePageModel.courseImage}"),
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: 20.0,
                        left: 10.0,
                      ),
                      child: Text(
                        coursePageModel.courseContent,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
