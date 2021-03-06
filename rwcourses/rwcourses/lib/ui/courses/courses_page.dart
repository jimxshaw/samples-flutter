import 'package:flutter/material.dart';
import 'package:rwcourses/constants.dart';
import 'package:rwcourses/repository/course_repository.dart';
import 'courses_controller.dart';
import '../../model/course.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  final _controller = CoursesController(CourseRepository());

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Course>>(
        future: _controller.fetchCourses(Constants.allFilter),
        builder: (context, snapshot) {
          // The snapshot will contain various states of the
          // Future as it comes back. Data property will
          // contain the courses.
          final courses = snapshot.data;

          if (courses == null) {
            // Convery to users that there's background network activity.
            return const Center(child: CircularProgressIndicator());
          }

          return Text(courses.toString());
        });
  }
}
