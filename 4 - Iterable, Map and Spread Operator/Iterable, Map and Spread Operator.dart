// 4 - Iterable, Map and Spread Operator
main()
{
  Iterable <int> l = [4,5,6,7,8,9] ;
  var a1 = [1,2.5, 3.2, 4,5,6];
  a1.any((element) => element%2==0);
  print( a1.any((element) => element%2==0));
 List<List<int>> arr=[[1,2,3]];
  var sum=0.0;
  List b = arr[0].map((e) {
    sum+=e;
    return e;
  }).toList();
  print(b);
  print(sum);


var list1 = null;
var list2 = [0,...?list1,...[3,3]];
print(list2);
/*
List <int> b = l.toList();
l.forEach((element) {print(element);});
var li = [
  [2,4,6],
  [8,9,4],
];
Iterable <int> s = {4,5,6,7,8,9};
Map<int,String> m = {9:'a' , 8:'b',7:'c'};
//var x = 10 ;
for (var item in l)
  {
    print(item);
  }

 */
}