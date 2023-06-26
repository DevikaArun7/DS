// import 'package:test/test.dart';

// void main(List<String> args) {
//   String str1= 'Well';
//   String str2 = 'come';
//   String str3 = str1+str2;
//   // print(str3);
//   // Second();
//   // third();
//   fourth();
// }

// Second(){
//   var name = "Devzz";
//   int rollno = 101;

//   print('My name is ${name} and my roll number is ${rollno}');
// }

// third(){
//   String str1='ZZZ  ';
//   print(str1.isEmpty);
//   print(str1.length);
// }

// fourth(){
//   String str1='D eVik a';
//   String str2='   Devzz';
//   print(str1.toLowerCase());
//   print(str1.toUpperCase());
//   print(str2.trim());
//   print(str1.split(''));
// }


 
//  void main(List<String> args) {
  // var age=14;
  // age =age?? 45;
  // print(age);

  // String name='Devika';
  // name=name?? 'Sruthi';
  // print(name);
//   var age;
//   var Myage=96;
//   Myage??= age;
//   print(Myage);
// }
void main(List<String> args) {
  var details ={'Username':'tom','age':'13'};
  print(details.keys);
   print(details.values);
    print(details.length);
     print(details.isEmpty);
      print(details.isNotEmpty);
      second();
}
second(){
  var projects={'first':'jan','second':'feb'};
  projects.addAll({'third':'mar'});
  // projects.clear();
  projects.remove('first');
  // projects.forEach((key, value) {});
  print(projects);
  // print(projects.clear());
  // print(projects.remove());
  // print(projects.forEach());
}