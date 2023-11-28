import 'package:json_annotation/json_annotation.dart';
part 'getnotificationdata.g.dart';

@JsonSerializable()
class GetNotificationData{

  @JsonKey(name: '_id')
  String id;
  String title;
  String? description;


  GetNotificationData({
    required this.id,
    required this.title,
    required this.description,

  });

  factory GetNotificationData.fromJson(Map<String, dynamic>json) => _$GetNotificationDataFromJson(json);
  Map<String, dynamic>toJson() => _$GetNotificationDataToJson(this);

}
