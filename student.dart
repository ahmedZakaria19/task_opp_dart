class Student {
  String name;
  int age;
  double grade;
  Student(this.name, this.age, this.grade);
  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
    print("Grade: $grade");
  }

  bool isPassed() => (grade >= 50);
}

Student findTopStudent(List<Student> students) {
  double maxGrade = students[0].grade;
  int indexOfStudent = 0;
  for (var i = 1; i < students.length; i++) {
    if (maxGrade < students[i].grade) {
      maxGrade = students[i].grade;
      indexOfStudent = i;
    }
  }
  return students[indexOfStudent];
}

void main() {
  Student s1 = Student("Ahmed", 20, 85);
  Student s2 = Student("Zakaria", 25, 95);
  Student s3 = Student("omar", 50, 40);
  List<Student> students = [s1, s2, s3];
  Student TopStudent = findTopStudent(students);
  print(TopStudent.name);
}
