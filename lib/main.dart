import 'package:flutter/material.dart';
import 'package:overlay_implementation/example1.dart';
import 'package:overlay_implementation/example3.dart';
import 'package:overlay_implementation/exmaple2.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      accentColor: Colors.green,
      scaffoldBackgroundColor: Colors.green[100],
      primaryColor: Colors.green,
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'GeeksForGeeks',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MaterialButton(
            color: Colors.teal,
            minWidth: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.06,
            child: Text(
              'Example 1',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Example1();
              }));
            },
          ),
          MaterialButton(
            color: Colors.orange,
            minWidth: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.06,
            child: Text(
              'Example 2',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Example2();
              }));
            },
          ),
          MaterialButton(
            color: Colors.blue,
            minWidth: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height * 0.06,
            child: Text(
              'Example 3',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Example3();
              }));
            },
          ),
        ],
      ))),
    );
  }
}
