//13 - TabBar
import 'screen1.dart';
import 'screen2.dart';
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

class MyHomePage extends StatelessWidget {
  void selectedScreen(BuildContext ctx, int n) {
    Navigator.of(ctx).pushNamed(
      n == 1 ? Screen1.routeName : '/x2',
      arguments: {'id': n == 1 ? 10 : 20, 'title': n == 1 ? "info1" : "info2"},
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Main Screen"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.category), text: ("part 1 ")),
              Tab(icon: Icon(Icons.category), text: ("part 2 ")),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Scaffold(
              appBar: AppBar(title: Text ("Part 1"),),
              body: Center(
                child: Text("Text 1"),
              ),
            ),
            Scaffold(
              body: Center(
                child: Text("Text2"),
              ),
            )
          ],
        ),
        drawerScrimColor: Colors.pinkAccent.withOpacity(0.5),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                onTap: () => selectedScreen(context, 1),
                title: Text('Go to Screen 1', style: TextStyle(fontSize: 25)),
                subtitle: Text('Go to Screen 1'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                onTap: () => selectedScreen(context, 2),
                title: Text('Go to Screen 2', style: TextStyle(fontSize: 25)),
                subtitle: Text('Go to Screen 1'),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
