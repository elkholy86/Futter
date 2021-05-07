// 30 - Higher order function
main()
{
  sum(6,10);
  hof(3,4,a);
  hof(3,4,(x,y) =>print ("Sum = ${x+ y}"));

}
void sum(x , y)
{
 print(" Sum = ${x+y}");
}
var a =(x,y) =>print ("Sum = ${x+ y}");
hof(int x , int y , Function z)
{
  z(x,y);
}