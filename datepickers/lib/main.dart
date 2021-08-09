import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage(),
  );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState () => _MyHomePageState();
  }

class _MyHomePageState extends State <MyHomePage>{
  DateTime _selectedDate = DateTime.now();
  void _datepicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.utc(2018,2,8),
      firstDate: DateTime(2018),
      lastDate: DateTime.now(),
    ).then((value){
      if (value == null) {
        return;
      }
      setState(() {
        _selectedDate = value;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        body: Center(
            child: RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child:
              Text("${DateFormat.yMMMd().format(_selectedDate)}",
                  style: TextStyle(color: Colors.white, fontSize: 30)),
              color: Colors.black,
              onPressed:_datepicker,
            ),
        ),
      );
  }
}
