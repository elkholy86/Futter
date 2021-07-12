import 'package:flutter/material.dart';
import 'text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter App",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellowAccent,
        title: Text(
          "Appbar Title",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
      //  margin: EdgeInsets.all(18.0),
          padding: EdgeInsets.all(18.0),
          color: Colors.redAccent,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyText("AAA",s),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MyText("SSS",s2),
              ),
            ],
          )),
    );
  }
}
