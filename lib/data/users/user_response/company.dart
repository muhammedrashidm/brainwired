import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable()
class CompanyResponse {
  String? name;
  String? catchPhrase;
  String? bs;

  CompanyResponse({this.name, this.catchPhrase, this.bs});

  factory CompanyResponse.fromJson(Map<String, dynamic> json) {
    return _$CompanyResponseFromJson(json);
  }
}
