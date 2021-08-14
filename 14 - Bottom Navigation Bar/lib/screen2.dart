// 10 - Multi Screens
//11 - Passing data between Screens
import 'package:flutter/material.dart';
import 'screen1.dart';
class Screen2 extends StatelessWidget
{
 // final String str2;
//  Screen2 (this.str2);
  void selectedScreen(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      Screen1.routeName,
    );
  }
  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context)!.settings.arguments as Map<String , Object>;
    return Scaffold (
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("${routeArg['id']}",style: TextStyle(fontSize: 35)),
            Text(routeArg['title'].toString(),style: TextStyle(fontSize: 35)),
            InkWell(
                onTap: () => selectedScreen(context),
                child: Text('Go to Screen 1', style: TextStyle(fontSize: 35))),
          ],
        ),
      ),
    );
  }
}