// 7 - Meal App Part 7 and 6
import 'package:flutter/material.dart';
import 'package:mealapppart/screens/category_meals_screen.dart';
import 'screens/categories_screen.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 255, 229,1),
        textTheme: ThemeData.light().textTheme.copyWith(
          body1: TextStyle(
           color: Color.fromRGBO(20, 50, 50,1),
      ),
          body2: TextStyle(
          color: Color.fromRGBO(20, 50, 50,1),
          ),
          title: TextStyle(
            fontSize: 24,
          fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold
          ),
        )
      ),
      routes: {
        '/':(context) => CategoriesScreen(),
        CategoryMealsScreen.routeName:(context) => CategoryMealsScreen(),
      },
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal App"),
      ),
      body: CategoriesScreen(),
    );
  }
}
