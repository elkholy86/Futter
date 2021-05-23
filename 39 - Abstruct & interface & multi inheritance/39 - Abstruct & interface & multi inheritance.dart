// 39 - Abstruct & interface & multi inheritance
abstract class A
{
  info1();
}

abstract class B
{
  info2() ;
}
class C implements B,A
{
 @override
  info1()
 {
 print("Hello1");
 }
 @override
  info2() {
   print("Hello2");
 }

}
main ()
{
var c  =C();
c.info1();
c.info2();
}