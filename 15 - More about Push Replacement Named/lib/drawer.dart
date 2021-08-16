import 'screen1.dart';
import 'package:flutter/material.dart';
import 'screen2.dart';
import 'main.dart';

class MyDrawer extends StatelessWidget
{
  void selectedScreen(BuildContext ctx, int n) {
    Navigator.of(ctx).pushReplacementNamed(
      n == 1 ? Screen1.routeName : (n==2)? '/x2': '/',
      arguments: {'id': n == 1 ? 10 : 20, 'title': n == 1 ? "info1" : "info2"},
    );
  }
  @override
  Widget build(BuildContext context) {
   return  Drawer(
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