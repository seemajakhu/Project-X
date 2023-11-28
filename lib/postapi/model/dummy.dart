import 'package:json_annotation/json_annotation.dart';

import 'dummydata.dart';
part 'dummy.g.dart';

@JsonSerializable()
class Dummy{

  String status;
  DummyData data;
  String message;


  Dummy({
    required this.status,
    required this.data,
    required this.message,

  });

  factory Dummy.fromJson(Map<String, dynamic>json) => _$DummyFromJson(json);
  Map<String, dynamic>toJson() => _$DummyToJson(this);

}
