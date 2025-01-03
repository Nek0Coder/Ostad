abstract class Role{
  void displayRole();
}

class Person extends Role{

  late int age;
  late String name;
  late String address;
  Person(this.name, this.age, this.address):super();

  String get getName => name;
  int get getAge => age;
  String get getAddress => address;

  @override
  void displayRole() {

  }
}

class Student extends Person{
  late String studentID;
  late String grade;
  late List<int> courseScores;

  Student(String name, int age, String address,this.studentID, this.grade, this.courseScores):super(name, age, address);

  @override
  displayRole(){
    print("Role: Student");
    }

  void avgScore(){
    var score = courseScores[0];

    for(int i = 1; i<courseScores.length; i++){
      score+=courseScores[i];
    }

    double avg = score/courseScores.length;
    print("Average score = $avg");

    // Correction: The value of average score given in the Sample I/O section of the question is incorrect as (90+85+82)/3 = 85.66 !

    }

}

class Teacher extends Person{
  late String teacherID;
  late List <String> coursesTaught;

  Teacher(String name, int age, String address,this.teacherID, this.coursesTaught):super(name, age, address);

  @override
  displayRole(){
    print("Role: Teacher");
  }

  void displayCourses(){
    print("Courses Taught: ");
    for (var course in coursesTaught) {
      print("- $course");
    }
  }
}

class StudentManagementSystem{
void manage() {
  Student s = Student(
      "John Doe", 20, "123 Main St", 'S01', 'A', [90, 85, 82]);

  Teacher t = Teacher(
      "Mrs. Smith", 35, "456 Oak St", 'T02', ["Math", "English", "Bangla"]);

  print("Student Information:");
  s.displayRole();
  print("Name: ${s.getName}");
  print("Age: ${s.getAge}");
  print("Address: ${s.getAddress}");
  s.avgScore();
  print('');

  print("Teacher Information:");
  t.displayRole();
  print("Name: ${t.getName}");
  print("Age: ${t.getAge}");
  print("Address: ${t.getAddress}");
  t.displayCourses();
  print('\n');
  }
}

void main(){

StudentManagementSystem sms = StudentManagementSystem();
sms.manage();

}