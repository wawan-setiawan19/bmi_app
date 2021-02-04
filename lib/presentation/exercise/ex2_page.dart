import 'package:flutter/material.dart';

class Ex2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: 200,
        height: 130,
        margin: EdgeInsets.all(40),
        child: Text(
          "Test Container Here !!",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70),
            topRight: Radius.circular(70),
          ),
        ),
      ),
    );
  }
}
