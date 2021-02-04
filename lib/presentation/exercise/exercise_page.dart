import 'package:flutter/material.dart';

class ExercisePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        margin: EdgeInsets.all(40),
        width: 100,
        child: Text("Test Container Here !!!"),
        height: 100,
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border(
            bottom: BorderSide(
              width: 10,
              color: Colors.green,
            ),
            left: BorderSide(
              width: 10,
              color: Colors.blue,
            ),
            right: BorderSide(
              width: 10,
              color: Colors.black,
            ),
            top: BorderSide(
              width: 10,
              color: Colors.yellow
            ),
          ),
        ),
      ),
    );
  }
}
