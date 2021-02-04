import 'package:flutter/material.dart';

class RowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 40,
                height: 40,
                color: Colors.pink,
              ),
              Container(
                width: 80,
                height: 80,
                color: Colors.green,
              ),
              Container(
                width: 100,
                height: 100,
                color: Colors.deepOrange,
              )
            ],
          ),
        ));
  }
}
