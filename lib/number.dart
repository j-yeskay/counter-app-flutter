import 'package:flutter/material.dart';

class Number extends StatelessWidget {
  final int number;

  Number(this.number);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(100),
      child: Text(
        number.toString(),
        style: TextStyle(color: Colors.white, fontSize: 100),
      ),
    );
  }
}
