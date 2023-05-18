import 'package:json_annotation/json_annotation.dart';

import 'address.dart';
import 'company.dart';

part 'user_response.g.dart';

@JsonSerializable()
class UserResponse {
  int? id;
  String? name;
  String? username;
  String? email;
  AddressResponse? address;
  String? phone;
  String? website;
  CompanyResponse? company;

  UserResponse({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return _$UserResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserResponseToJson(this);
}
