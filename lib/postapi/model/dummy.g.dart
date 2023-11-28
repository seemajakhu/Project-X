// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dummy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Dummy _$DummyFromJson(Map<String, dynamic> json) => Dummy(
      status: json['status'] as String,
      data: DummyData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$DummyToJson(Dummy instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };
