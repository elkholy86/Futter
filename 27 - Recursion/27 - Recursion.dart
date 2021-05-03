// 27 - Recursion
main ()
{
var x = fun(6);
print(x);

}
fun(n)
{
  if(n!=0) return n+fun(n-1);
  else
    return 0 ;

}