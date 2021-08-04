//  6 - Images (LEC 6 section 5)
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'info.dart';

void main() => runApp(MyApp());
Color w = Colors.white;
Color b = Colors.black;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.pinkAccent,
          fontFamily: 'Quicksand',
          textTheme: ThemeData.light().textTheme.copyWith(
                  title: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 35,
                color: w,
              )),
          appBarTheme: AppBarTheme(
              textTheme: ThemeData.light().textTheme.copyWith(
                    title: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 35,
                      color: w,
                    ),
                  ))),
      debugShowCheckedModeBanner: false,
      title: "Flutter App",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Info> li = [
    Info(name: "Hassan1", height: 170, date: DateTime.now()),
    Info(name: "Hassan2", height: 175, date: DateTime.now()),
    Info(name: "Hassan3", height: 180, date: DateTime.now()),
    Info(name: "Hassan4", height: 185, date: DateTime.now()),
    Info(name: "Hassan5", height: 190, date: DateTime.now()),
    Info(name: "Hassan6", height: 190, date: DateTime.now()),
    Info(name: "Hassan7", height: 190, date: DateTime.now()),
  ];

  void x(BuildContext ctx) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return ListView.builder(
            itemCount: li.length,
            itemBuilder: (_, index) {
              return Container(
                color: Colors.amber,
                padding: EdgeInsets.all(4.0),
                child: Card(
                  color: Theme.of(ctx).accentColor,
                  shadowColor: Colors.greenAccent,
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(li[index].name,
                                style: Theme.of(ctx).textTheme.title),
                            Text("${li[index].height}",
                                style: TextStyle(color: w, fontSize: 30)),
                          ],
                        ),
                        Text("${DateFormat().format(li[index].date)}",
                            style: TextStyle(color: w, fontSize: 25)),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flutter App",
          style: TextStyle(color: b),
        ),
      ),
      body: Container(
          height: double.infinity,
          color: b,
          child: Column(
            children: [
              Image.network(
                'https://almalnews.com/wp-content/uploads/2019/10/%D8%A3%D8%B3%D8%B9%D8%A7%D8%B1-%D9%87%D9%88%D9%86%D8%AF%D8%A7-%D8%B3%D9%8A%D9%81%D9%8A%D9%83-2020.jpg',
                fit: BoxFit.fitWidth,
              ),
             Image.asset("assets/images/1.jpg",fit: BoxFit.fill)
            ],
          )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => x(context),
      ),
    );
  }
}
