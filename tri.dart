  import "dart:io";

  double triangle(base, height){
  double area =  0.5 * base * height;
  return area;
  }

  void main(){
    print("Enter the value of base.");
    int base = int.parse(stdin.readLineSync()!);
    print("Enter the value of height.");
    int height = int.parse(stdin.readLineSync()!);

    print("The area of the triangle is ${triangle(base, height)}");
  }
