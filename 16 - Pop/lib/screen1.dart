import 'package:flutter/material.dart';
import 'screen2.dart';
import 'drawer.dart';

class Screen1 extends StatelessWidget {
  static const routeName = '/my_screen1_category' ;

  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context)!.settings.arguments as Map<String , Object>;
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen 1"),
      ),
      body: null,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.delete),
        onPressed: (){
          Navigator.of(context).pop(routeName);
        },
      ),
      drawer:MyDrawer(),
    );
  }
}
