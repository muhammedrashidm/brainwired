import 'package:brainwired/Domain/users/user_modal.dart';
import 'package:brainwired/data/users/user_response/address.dart';
import 'package:brainwired/data/users/user_response/company.dart';
import 'package:brainwired/data/users/user_response/geo.dart';
import 'package:brainwired/data/users/user_response/user_response.dart';

extension UsersToModal on UserResponse? {
  UserData toDomain() {
    return UserData(
        id: this?.id ?? 0,
        name: this?.name ?? '',
        username: this?.username ?? '',
        email: this?.email ?? '',
        address: this?.address.toDomain() ?? Address.empty(),
        phone: this?.phone ?? '',
        website: this?.website ?? '',
        company: this?.company.toDomain() ?? Company.empty());
  }
}

extension AddressToDomain on AddressResponse? {
  Address toDomain() => Address(
      street: this?.street ?? '',
      suite: this?.suite ?? '',
      city: this?.city ?? '',
      zipcode: this?.zipcode ?? '',
      geo: this?.geo.toDomain() ?? Geo.empty());
}

extension GeoToDomain on GeoResponse? {
  Geo toDomain() => Geo(lat: this?.lat ?? '', lng: this?.lng ?? '');
}

extension CompanyToDomain on CompanyResponse? {
  Company toDomain() {
    return Company(
        name: this?.name ?? '',
        catchPhrase: this?.catchPhrase ?? '',
        bs: this?.bs ?? '');
  }
}
