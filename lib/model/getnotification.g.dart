// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getnotification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetNotification _$GetNotificationFromJson(Map<String, dynamic> json) =>
    GetNotification(
      success: json['success'] as bool,
      data: (json['data'] as List<dynamic>)
          .map((e) => GetNotificationData.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String?,
      errorCode: json['errorCode'] as String?,
    );

Map<String, dynamic> _$GetNotificationToJson(GetNotification instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data,
      'error': instance.error,
      'errorCode': instance.errorCode,
    };
