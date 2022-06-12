import '../../model/course.dart';
import '../../repository/repository.dart';
import '../../repository/course_repository.dart';

class CourseController {
  final Repository _repository = CourseRepository();

  Future<List<Course>> fetchCourses(int domainFilter) {
    return _repository.getCourses(domainFilter);
  }
}
