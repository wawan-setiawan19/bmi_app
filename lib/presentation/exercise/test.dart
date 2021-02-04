// import 'dart:ui';

import 'package:bmi__app/domain/model/gender_data_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  List<int> counter = List();
  List<String> names = List();
  List<GenderDataModel> genderDataModel = List();

  void insertDataToList(int data) {
    counter.add(data);
  }

  void fillDataToList() {
    genderDataModel.add(
      GenderDataModel(
        'assets/icons/male.svg',
        'Male',
        false,
      )
    );
    genderDataModel.add(
      GenderDataModel(
        'assets/icons/female.svg',
        'Female',
        false,
      )
    );
  }

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    fillDataToList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: genderDataModel
            .map(
              (value) => 
              // Text(
              //   value.label,
              //   style: TextStyle(fontSize: 30),
              // ),
              SvgPicture.asset(value.image,),
            )
            .toList(),
      ),
    ));
  }
}


