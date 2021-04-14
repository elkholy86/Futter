import 'dart:io';
void main ()
{
  loop:
for(var i = 0 ; i <10 ; i--) {
try {
print("Enter your Birth Year : ");
var max = stdin.readLineSync();
var age = DateTime
    .now()
    .year - num.parse(max!);
print("Your age is $age Years Old ");
break loop;
} on FormatException {
print("Wrong Value");
}

/*
{
  for(var i = 0 ; i <10 ; i--) {
    try {
      print("Enter your Birth Year : ");
      var max = stdin.readLineSync();
      var age = DateTime
          .now()
          .year - num.parse(max!);
      print("Your age is $age Years Old ");
    } on FormatException {
      print("Enter your Birth Year : ");
      var max = stdin.readLineSync();
      var age = DateTime
          .now()
          .year - num.parse(max!);
      print("Your age is $age Years Old ");
    }
    print("Wrong Value");
  }

 */
  /*
  try
  {
    print("Enter your Birth Year : ");
    var max = stdin.readLineSync();
    var age = DateTime
        .now()
        .year - num.parse(max!);
    print("Your age is $age Years Old ");
  }catch(e)
  {print(e);}
  print("Done");

   */
}}