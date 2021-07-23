import 'package:flutter/material.dart';

class Increase extends StatelessWidget {
  final int number;
  final Function increaseHandler;

  Increase(this.number, this.increaseHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.plus_one_rounded, color: Colors.black),
        onPressed: () => increaseHandler(),
      ),
    );
  }
}
