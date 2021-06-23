// 51 - Lexical Closure, Callable Function
main ()
{
  var human1= Human();
  print (human1("Ali" , 27));


  /*
Function fun= ()
  {
    String message = "Hello" ;
    Function say = (String msg)
    {
      message = msg;
      print(message);
    };
    return say;
  };
Function f = fun();
f("Ali");

   */
}

/*
Function Human ()
{
  call ()
  {
    print ("Hi");
  }
  return call ;
}

 */
class Human
{
  call (String name , int age)
  {
    print ("Name = $name || Age = $age");
  }

}