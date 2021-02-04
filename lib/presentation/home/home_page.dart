import 'package:bmi__app/domain/model/gender_data_model.dart';
import 'package:bmi__app/domain/model/result_data_model.dart';
import 'package:bmi__app/presentation/result/result_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double currentValue = 100;
  double weightCount = 60;
  double ageCount = 20;

  List<GenderDataModel> genderDataModel = List();

  void fillDataToList() {
    genderDataModel.add(GenderDataModel(
      'assets/icons/male.svg',
      'Male',
      true,
    ));
    genderDataModel.add(GenderDataModel(
      'assets/icons/female.svg',
      'Female',
      false,
    ));
  }

  @override
  void initState() {
    fillDataToList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff12163A),
        title: Text("BMI Calculator"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10,
              ),
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: genderDataModel
                    .map(
                      (gender) => Expanded(
                        child: InkWell(
                          onTap: () {
                            genderDataModel.forEach((element) {
                              element.isSelected = false;
                            });
                            gender.isSelected = true;
                            setState(() {});
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: 100,
                            decoration: BoxDecoration(
                              color: gender.isSelected
                                  ? Color(0xff272A4D)
                                  : Color(0xff48495B),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5)),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SvgPicture.asset(
                                  gender.image,
                                  height: 60,
                                  color: gender.isSelected
                                      ? Colors.white
                                      : Colors.grey,
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  gender.label,
                                  style: TextStyle(
                                    color: gender.isSelected
                                        ? Colors.white
                                        : Colors.grey,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              height: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xff272A4D),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Height (cm)",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        currentValue.toStringAsFixed(0),
                        style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: currentValue,
                    min: 50,
                    max: 300,
                    onChanged: (val) {
                      setState(() {
                        currentValue = val;
                      });
                    },
                    activeColor: Colors.white,
                    inactiveColor: Colors.grey,
                  )
                ],
              ),
            ),
            Container(
              height: 170,
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff272A4D),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Weight (Kg)",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            weightCount.toStringAsFixed(0),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      weightCount--;
                                      if (weightCount < 20) weightCount = 20;
                                    });
                                  },
                                  color: Color(0xff373f74),
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                  height: 40,
                                  shape: CircleBorder(),
                                ),
                              ),
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      weightCount++;
                                    });
                                  },
                                  color: Color(0xff373f74),
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                  height: 40,
                                  shape: CircleBorder(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xff272A4D),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Age (Year)",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            ageCount.toStringAsFixed(0),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      ageCount--;
                                      if (ageCount < 10) ageCount = 10;
                                    });
                                  },
                                  color: Color(0xff373f74),
                                  child: Text(
                                    "-",
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                  height: 40,
                                  shape: CircleBorder(),
                                ),
                              ),
                              Expanded(
                                child: MaterialButton(
                                  onPressed: () {
                                    setState(() {
                                      ageCount++;
                                    });
                                  },
                                  color: Color(0xff373f74),
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                  height: 40,
                                  shape: CircleBorder(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 60,
              child: RaisedButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                onPressed: () {
                  final _currentGender = genderDataModel
                      .firstWhere((gender) => gender.isSelected == true);
                  final _height = currentValue.toStringAsFixed(0);
                  final _weight = weightCount.toStringAsFixed(0);
                  final _age = ageCount.toStringAsFixed(0);

                  final _result = ResultDataModel(genderDataModel: _currentGender,age: _age,height: _height,weight: _weight,);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => ResultPage(
                            resultDataModel: _result,
                          )));
                },
                color: Colors.pink,
                child: Text(
                  "CALCULATE YOUR BMI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
