// 25 - Optional, Default Parameters
main ()
{
  info("Ali","Max");
  //sum(4,6 , a:7);
}
/*
sum(x,z,{y,s,a})
{
  print('x= $x');
  print('y= $y');
  print('S= $s');
  print('A= $a');
  print('Z= $z');
}
 */
info(String firstName ,String lastName, {int age=22, int phone=0543474701 ,height=170})
{
  print("FirstName =$firstName");
  print("LastName =$lastName");
  print("Age =$age");
  print("Phone =$phone");
  print("Height =$height");
}