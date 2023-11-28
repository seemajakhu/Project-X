// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getnotificationdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNotificationData _$GetNotificationDataFromJson(Map<String, dynamic> json) =>
    GetNotificationData(
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$GetNotificationDataToJson(
        GetNotificationData instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
    };
