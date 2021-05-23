// 38 - Super Constructor
class A
{
  A(z)
  {
    print("Messsage = $z");
  }
}
class B extends A {
  B(y) :super (y) {
    print("Message 2 = $y");
  }
}
class C extends B
{
  C(x) :super (x) {
    print("Message 3 = $x");
  }
}

main()
{
var c= C("Max");
}