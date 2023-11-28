import 'package:json_annotation/json_annotation.dart';
part 'dummydata.g.dart';

@JsonSerializable()
class DummyData{

  @JsonKey(name: '_id')
  String name;
  String salary;
  String age;
  int id;



  DummyData({
    required this.name,
    required this.salary,
    required this.age,
    required this.id,

  });

  factory DummyData.fromJson(Map<String, dynamic>json) => _$DummyDataFromJson(json);
  Map<String, dynamic>toJson() => _$DummyDataToJson(this);

}
