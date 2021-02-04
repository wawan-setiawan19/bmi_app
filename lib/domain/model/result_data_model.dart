import 'package:bmi__app/domain/model/gender_data_model.dart';

class ResultDataModel {
  final GenderDataModel genderDataModel;
  final String age;
  final String height;
  final String weight;

  const ResultDataModel({
    this.age,
    this.height,
    this.weight,
    this.genderDataModel,
  });
}
