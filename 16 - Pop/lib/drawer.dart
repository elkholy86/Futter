import 'screen1.dart';
import 'package:flutter/material.dart';
import 'screen2.dart';
import 'main.dart';

class MyDrawer extends StatelessWidget {

  String str = "";
  void selectedScreen(BuildContext ctx, int n) {
    if (n == 1) {
      Navigator.of(ctx).pushNamed(
        Screen1.routeName,
        arguments: {
          'id': 10,
          'title': "info1",
        },
      ).then((value) => str =value.toString());
    } else {
      Navigator.of(ctx).pushReplacementNamed(
        n == 2 ? '/x2' : '/',
        arguments: {
          'id': n == 1 ? 10 : 20,
          'title': n == 1 ? "info1" : "info2",
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          ListTile(
            onTap: () => selectedScreen(context, 0),
            title: Text('Go to Main Screen', style: TextStyle(fontSize: 22)),
            subtitle: Text('Go to Screen 1'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () => selectedScreen(context, 1),
            title: Text('Go to Screen 1', style: TextStyle(fontSize: 22)),
            subtitle: Text('Go to Screen 1'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            onTap: () => selectedScreen(context, 2),
            title: Text('Go to Screen 2', style: TextStyle(fontSize: 22)),
            subtitle: Text('Go to Screen 1'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}
