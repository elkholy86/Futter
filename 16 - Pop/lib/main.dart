// 16 - Pop
import 'screen1.dart';
import 'screen2.dart';
import 'drawer.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: MyHomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        Screen1.routeName: (context) => Screen1(),
        '/x2': (context) => Screen2()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final List<Map<String, Object >> _Pages = [
    {
      'page': Scaffold(
        body: Center(
          child: Text("Text 1"),
        ),
      ),
      'title': "part 1",
    },
    {
      'page': Scaffold(
        body: Center(
          child: Text("Text2"),
        ),
      ),
      'title': "part 2",
    },
  ];
  int _selectedPageIndex = 0;

  void _x1(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(_Pages[_selectedPageIndex]['title'] as String),
        ),
        body: _Pages[_selectedPageIndex] ['page'] as Widget,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.pinkAccent,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
          currentIndex: _selectedPageIndex,
          selectedFontSize: 15,
          unselectedFontSize: 15,
          type: BottomNavigationBarType.shifting,
          onTap: _x1,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Colors.pinkAccent,
                icon: Icon(Icons.category),
                title: Text("Part 1")),
            BottomNavigationBarItem(
                backgroundColor: Colors.pinkAccent,
                icon: Icon(Icons.category),
                title: Text("Part 1")),
          ],
        ),
        drawerScrimColor: Colors.pinkAccent.withOpacity(0.5),
        drawer:MyDrawer(),
      ),
    );
  }
}
