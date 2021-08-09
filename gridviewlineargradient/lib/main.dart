// 9 - Grid View & Linear Gradient
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget info(String title, Color color) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(title, style: TextStyle(fontSize: 30)),
      decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          color.withOpacity(0.7),
          color,
        ]
      ),
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('app02'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 15),
          child: GridView(
            children: <Widget>[
             info('Title1', Colors.red),
              info('Title2', Colors.pinkAccent),
              info('Title3', Colors.amber),
              info('Title4', Colors.green),
              info('Title5', Colors.blue),
              info('Title6', Colors.pink),
              info('Title1', Colors.red),
              info('Title2', Colors.pinkAccent),
              info('Title3', Colors.amber),
              info('Title4', Colors.green),
              info('Title5', Colors.blue),
              info('Title6', Colors.pink),
            ],
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
            ),
          ),
        ),
      ),
    );
  }
}
