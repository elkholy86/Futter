import 'dart:io';
void main ()
{
  print ("Enter your Birth Year : ");
  var max = stdin.readLineSync();
  var age = DateTime.now().year-num.parse(max!);
  print ("Your age is $age Years Old ");

}