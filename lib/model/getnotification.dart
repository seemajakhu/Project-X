import 'package:json_annotation/json_annotation.dart';

import 'getnotificationdata.dart';
part 'getnotification.g.dart';

@JsonSerializable()
class GetNotification{

  bool success;
  List<GetNotificationData> data;
  String? error;
  String? errorCode;

  GetNotification({
    required this.success,
    required this.data,
    required this.error,
    required this.errorCode,
  });

  factory GetNotification.fromJson(Map<String, dynamic>json) => _$GetNotificationFromJson(json);
  Map<String, dynamic>toJson() => _$GetNotificationToJson(this);


}
