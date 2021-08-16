// 10 - Multi Screens
//11 - Passing data between Screens
import 'package:flutter/material.dart';
import 'screen1.dart';
class Screen2 extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    final routeArg = ModalRoute.of(context)!.settings.arguments as Map<String , Object>;
    return Scaffold (
      appBar: AppBar(
        title: Text("Screen 2"),
      ),
      body:null,
    );
  }
}