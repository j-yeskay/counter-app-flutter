import 'package:flutter/material.dart';

class Decrease extends StatelessWidget {
  final int number;
  final Function decreaseHandler;
  Decrease(this.number, this.decreaseHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        child: Icon(Icons.exposure_minus_1_rounded, color: Colors.black),
        onPressed: () => decreaseHandler(),
      ),
    );
  }
}
