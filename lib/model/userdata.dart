import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
part 'userdata.g.dart';

@JsonSerializable()
class UserData {
  int id;
  String? name;
  String? username;
  String? email;
  Addresss address;

  UserData({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}