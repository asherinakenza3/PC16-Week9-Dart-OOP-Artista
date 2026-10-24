class Student {

  String name;
  String course;
  double _grade;
  int completedActivities;
  int totalActivities;

  Student(
    this.name,
    this.course,
    this._grade,
    this.completedActivities,
    this.totalActivities,
  );

  double getGrade() {
    return _grade;
  }

  void updateGrade(double newGrade) {

    if (newGrade >= 0 && newGrade <= 100) {
      _grade = newGrade;
    } else {
      print('Invalid grade. Enter a value from 0 to 100.');
    }

  }

  double calculateProgress() {

    if (totalActivities <= 0) {
      return 0;
    }

    return (completedActivities / totalActivities) * 100;

  }

  void displayInformation() {

    print('Student Name: $name');
    print('Course: $course');
    print('Grade: ${getGrade().toStringAsFixed(2)}');
    print('Completed Activities: $completedActivities');
    print('Total Activities: $totalActivities');
    print(
      'Activity Progress: ${calculateProgress().toStringAsFixed(2)}%',
    );

    print('-----------------------------------');

  }

}

void main() {

  Student student1 = Student(
    'Ashanti P. Artista',
    'BSIT',
    89.75,
    8,
    10,
  );

  Student student2 = Student(
    'Student 2',
    'BSIT',
    91.50,
    9,
    10,
  );

  List<Student> students = [
    student1,
    student2,
  ];

  print('STUDENT ACTIVITY TRACKER');
  print('===================================');

  for (Student student in students) {

    student.displayInformation();

  }

  print('UPDATING STUDENT GRADE');
  print('===================================');

  student1.updateGrade(92.00);

  print('Updated Grade: ${student1.getGrade().toStringAsFixed(2)}');

  print('===================================');

}