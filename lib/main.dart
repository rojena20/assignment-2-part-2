import 'package:assign2_part2/anroid_course.dart';
import 'package:assign2_part2/fullStack_course.dart';
import 'package:assign2_part2/ios_course.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        AndroidCourse.routeName: (context) => AndroidCourse(),
        IosCourse.routeName: (context) => IosCourse(),
        FullstackCourse.routeName: (context) => FullstackCourse(),
      },
      initialRoute: HomeScreen.routeName,
    ),
  );
}
