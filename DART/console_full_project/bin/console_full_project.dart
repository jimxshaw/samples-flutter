import 'package:console_full_project/console_full_project.dart'
    as console_full_project;

void main(List<String> arguments) {
  try {
    print(
        'Args sum: ${arguments.fold<int>(0, (previousValue, element) => previousValue + int.parse(element))}');
  } catch (e) {
    print('Error: at least one element is not an integer.');
  }
}
