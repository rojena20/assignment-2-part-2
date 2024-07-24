import 'package:flutter/material.dart';
import 'models/course_card_model.dart';

class CourseCard extends StatefulWidget {
  CourseCardModel courseCardModel;

  CourseCard({super.key, required this.courseCardModel});

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          child: Image.asset(
            "assets/images/${widget.courseCardModel.image}",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, widget.courseCardModel.cousrePage);
              setState(() {});
            },
            child: Text(
              "${widget.courseCardModel.courseName}",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(
                Color.fromARGB(255, 16, 74, 210),
              ),
              shape: WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
