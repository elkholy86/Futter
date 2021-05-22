// 34 - Static this

class Human
{
 static var fName;

  Human ([fName]) {
    print("First Name = ${fName}") ;
  }
}
main()
{

  var h1 = new Human("Ali");
  var h2 = Human("Ahmed");

}