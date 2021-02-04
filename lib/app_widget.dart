// import 'package:bmi__app/presentation/exercise/column_page.dart';
// import 'package:bmi__app/presentation/exercise/ex2_page.dart';
// import 'package:bmi__app/presentation/exercise/exercise_page.dart';
// import 'package:bmi__app/presentation/exercise/image_page.dart';
// import 'package:bmi__app/presentation/exercise/row_page.dart';
// import 'package:bmi__app/presentation/exercise/test.dart';
import 'package:bmi__app/presentation/home/home_page.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      // home: TestPage() ,
      debugShowCheckedModeBanner: false,
    );
  }
}
