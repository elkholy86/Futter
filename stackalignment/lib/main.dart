// 4 - Stack & Alignment
import 'package:flutter/material.dart';
import 'text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyappState();
  }
}

class MyappState extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("App Bar"),
          ),
          body: Container(
            alignment: Alignment.center,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Container(
                  width: 400,
                  height: 400,
                  color: Colors.greenAccent,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children:<Widget> [
                          Text("te",style: s2),
                          Text("te",style: s2),
                          Text("te",style: s2),
                          Text("te",style: s2),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children:<Widget> [
                          Text("te",style: s2),
                          Text("te",style: s2),
                          Text("te",style: s2),
                          Text("te",style: s2),
                        ],
                      ),
                    ],

                  )


                ),
              ],
            ),
          )),
    );
  }
}
