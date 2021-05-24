// 40 - Mixins
mixin A
{
  info ();
}
mixin B
{
  info2 ();
}
abstract class C
{
  info3 ();
}

class D extends C with A,B
{
@override
  info() {
  print("Hello");
  }
info2() {
  print("Hello2");
}
info3() {
  print("Hello3");
}
}
 main ()
{
  var d =D ();
  d.info();
  d.info2();
  d.info3();
}