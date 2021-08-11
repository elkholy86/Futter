import 'package:flutter/material.dart';
import 'screen2.dart';

class Screen1 extends StatelessWidget {
  static const routeName = '/my_screen1_category' ;
  void selectedScreen(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
     '/x2',
    );
  }

  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context)!.settings.arguments as Map<String , Object>;
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("${routeArg['id']}",style: TextStyle(fontSize: 35)),
            Text(routeArg['title'].toString(),style: TextStyle(fontSize: 35)),
            InkWell(
                onTap: () => selectedScreen(context),
                child: Text('Go to Screen 2', style: TextStyle(fontSize: 35))),
          ],
        ),
      ),
    );
  }
}
