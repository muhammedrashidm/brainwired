import 'package:json_annotation/json_annotation.dart';

import 'geo.dart';

part 'address.g.dart';

@JsonSerializable()
class AddressResponse {
  String? street;
  String? suite;
  String? city;
  String? zipcode;
  GeoResponse? geo;

  AddressResponse({this.street, this.suite, this.city, this.zipcode, this.geo});

  factory AddressResponse.fromJson(Map<String, dynamic> json) {
    return _$AddressResponseFromJson(json);
  }
}
