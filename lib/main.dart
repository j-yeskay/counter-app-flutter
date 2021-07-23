import 'package:counter/decrease.dart';
import 'package:counter/increase.dart';
import 'package:counter/number.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _count = 0;

  void _increaseCount() {
    setState(() {
      _count = _count + 1;
    });
  }

  void _decreaseCount() {
    setState(() {
      _count = _count - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Center(
            child: Text('Counter'),
          ),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Center(
              child: Number(_count),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Center(
                  child: Increase(_count, _increaseCount),
                ),
                Center(
                  child: Decrease(_count, _decreaseCount),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
