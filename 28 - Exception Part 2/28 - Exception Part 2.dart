// 28 - Exception Part 2
main ()
{
  info ();
}

info ()
{
  try {
    for (var i = 0; i <= 10; i++) {
      if (i == 5) {
        throw FormatException("error");
      }
      print("i = $i");
    }
  }
  catch(e)
  {
    print(e);
  }

}