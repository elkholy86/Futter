// 48 - Operator Overloading
 void main ()
{
var c1 = myClass(4)..get();

var c2 = myClass(20)..get();
var c3 = myClass();
//c3.add(c1, c2);
 // c3 = c1.add(c2);
  c3 = c1 + c2 ;
c3.get();
}

class myClass
{
  int num ; 
  myClass ([this.num= 0]);
  get()
  {
    print("Number = ${this.num}") ;
  }
  myClass operator + (myClass c2)
  {
    var c3 =myClass(this.num + c2.num) ;
    return c3 ;

  }
  /*
  add (myClass c2)
  {
   //this.num=c1.num +c2.num ;
    return myClass(this.num+c2.num);
  }

   */

}