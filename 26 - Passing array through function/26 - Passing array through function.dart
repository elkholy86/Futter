// 26 - Passing array through function
main ()
{
/*  var a = [2 , 3 , 4  , "Ali" ,true];
  var b = [2 , 3 , 4  , "Ali" ,true];
  fun(a);
  fun(b);
 */
  var a = [2 , 3 , 4  , 5];
  fun(a);
}
fun(List <int> list)
{
  for (var i=0; i < list.length;i++)
  {
    print("value = ${list[i]}");
  }

/*
fun(List list)
{
  for (var i=0; i < list.length;i++)
  {
    print("value = ${list[i]}");
  }

 */
/*
fun(List list)
{
for (var value in list)
  {
    print("value = $value");
  }
 */
}