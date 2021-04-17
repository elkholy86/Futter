main ()
{
  //19 - Strings Methods
  var name = "Hassan";
print (name.isEmpty);
  print (name.isNotEmpty);
  print (name.toLowerCase());
  print (name.toUpperCase());
  print (name.contains('SSA'));
  print (name.replaceRange(0, 2, 'max'));
  print (name.replaceFirst('H','D'));
  print (name.replaceFirst('Hassan','maxpayne'));
  var text = "H#A#S#s#a#n#";
  var v1 = text.split("#");
  print(v1);
  var v2 = v1.join("#");
  print(v2);
  print(v2.replaceAll('#', ""));
  print(text.trim());
  
}