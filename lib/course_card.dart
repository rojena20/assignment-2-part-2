import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  String image;
  String courseName;

  CourseCard({super.key, required this.image, required this.courseName});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          child: Image.asset("assets/images/${this.image}", fit: BoxFit.fill,),
        ),
        Container(
          child: ElevatedButton(
            onPressed: () {},
            child: Text("${this.courseName}"),
            style: ButtonStyle(),
          ),
        ),
      ],
    );
  }
}
