import 'package:json_annotation/json_annotation.dart';

part 'geo.g.dart';

@JsonSerializable()
class GeoResponse {
  String? lat;
  String? lng;

  GeoResponse({this.lat, this.lng});

  factory GeoResponse.fromJson(Map<String, dynamic> json) =>
      _$GeoResponseFromJson(json);
}
