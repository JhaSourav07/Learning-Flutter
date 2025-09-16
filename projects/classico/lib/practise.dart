
import 'dart:io';

void main(){
  print("Hello, Dart!");
  stdout.write("Enter your name: ");
  String? name = stdin.readLineSync();
  print("Welcome, $name!");
  Human();

  int? a;
  a = 10; //initialization
  print(a);

  a=7;
  print(a);


  String name2 ="Raman";
  print(name2);
}

class Human{

}