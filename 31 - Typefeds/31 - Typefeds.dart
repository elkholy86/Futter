// 31 - Typefeds
typedef operation (a,b);
calc(x , y , operation s)
{
  s(x,y);
}

main()
{
 operation op;
 op=add;
 op(5,5);
 op=Sub;
 op(3,4);
  // calc(5,5,Sub);
}

info()
{
  print("Hello");
}
add(a,b)
{
  print("$a+$b = ${a+b}");
}
Sub(a,b)
{
  print("$a-$b = ${a-b}");
}
Mul(a,b)
{
  print("$a*$b = ${a*b}");
}
div(a,b)
{
  print("$a/$b = ${a/b}");
}