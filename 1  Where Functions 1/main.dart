//1 - Where Functions #1
void main() {
  var a1 = [1, 2.5, 3.2, 4, 5, 6];
  print(a1);

  var b1 = a1.where((element) => element % 2 == 0);
  var b2 = a1.firstWhere((element) => element % 2 == 0);
  var b3 = a1.lastWhere((element) => element % 2 == 0);
  var c1 = a1.indexWhere((element) => element % 2 == 0);
  var c2 = a1.lastIndexWhere((element) => element % 2 == 0);
  var d = a1.whereType<double>();
  // b1.forEach((element) {print(element);});
  print(b1);
  print(b2);
  print(b3);
  print(c1);
  print(c2);
  print(d);
}
