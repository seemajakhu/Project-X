import 'package:json_annotation/json_annotation.dart';
part 'address.g.dart';

@JsonSerializable()
class Addresss {
  String? street;
  String? suite;
  String? city;
  String? zipcode;


  Addresss({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,

  });

  factory Addresss.fromJson(Map<String, dynamic> json) => _$AddresssFromJson(json);
  Map<String, dynamic> toJson() => _$AddresssToJson(this);
}
