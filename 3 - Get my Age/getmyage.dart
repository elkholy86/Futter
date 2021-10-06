// 3 - Get my Age
import 'dart:io';
void main ()
{
  print("Enter your birth_Years: ");
  var birth_Years = stdin.readLineSync();
  var age = DateTime.now().year- int.parse(birth_Years!);
  print ("Your Age is $age Years old");
}