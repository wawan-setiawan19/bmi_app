import 'package:bmi__app/domain/model/result_data_model.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  final ResultDataModel resultDataModel;

  const ResultPage({this.resultDataModel});
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  ResultDataModel _result;
  double bmi = 0;
  String status;

  @override
  void initState() {
    _result = widget.resultDataModel;
    int _height = int.parse(_result.height);
    int _weight = int.parse(_result.weight);
    bmi = _weight / (_height / 100 * _height / 100);
    if (bmi < 18.5) {
      status = "UNDER";
    } else if (bmi <= 24.9) {
      status = "NORMAL";
    } else if (bmi <= 29.9) {
      status = "PRE OBESITY";
    } else if (bmi <= 34.9) {
      status = "OBESITY I";
    } else if (bmi <= 39.9) {
      status = "OBESITY II";
    } else {
      status = "OBESITY III";
    }
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 30, left: 20),
              child: Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Color(0xff12163A),
                    borderRadius: BorderRadius.circular(5)),
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 55, vertical: 20),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text(
                        status,
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: Text(
                        bmi.toStringAsFixed(1),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        "Normal BMI range:",
                        style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text(
                        "18.5 - 25 kg/m2",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          height: 1.5,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: Text(
                        "You have a normal body weight, Good job",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          letterSpacing: -1,
                          height: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    MaterialButton(
                      padding:
                          EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                      onPressed: () {},
                      child: Text(
                        "SAVE RESULT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      color: Colors.black,
                    )
                  ],
                )),
            Container(
              width: double.infinity,
              height: 60,
              child: RaisedButton(
                onPressed: () {},
                color: Colors.pink,
                child: Text(
                  "RE_CALCULATE YOUR BMI",
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
