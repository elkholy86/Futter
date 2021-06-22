//49 - Polymorphism
main ()
{
//var s = shape();
var c = Circle() ;
var r = Rectangle();
var sq = Square();
c.infoo();
c.info();
/*
a.fun(c);
a.fun(r);
a.fun(sq);

 */
/*s.info();
c.info();
r.info();
sq.info();
var a1 = shape();
var a2 = Circle() ;
var a3 = Rectangle();

 */
//List <shape> date = [a1,a2,a3];
// List <shape> date = [shape(), Circle(),Rectangle () ,Square() ];
 /* List <shape> data = [c,r,sq];
  for (var value in data)
    {
      print (value.info());
    }


//  data[0].info();
}
class A
{
fun(shape q)
{
  q.info();
}

  */
}


abstract class shape
{
  info ()
  {
    print ("shape");
  }
}
class Circle extends shape
{
  @override
  infoo() {
    print ("Circle");
  }
}
class Rectangle extends shape
{
  @override
  info() {
    print ("Rectangle");
  }
}

class Square extends shape
{
  @override
  info() {
    print ("Square");
  }
}
