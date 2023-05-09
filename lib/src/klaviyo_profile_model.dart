import 'package:equatable/equatable.dart';

class KlaviyoProfileModel extends Equatable {
  final String id;
  final String email;
  final String? phoneNumber;
  final String? firstName;
  final String? lastName;
  final String? address1;
  final String? region;
  final String? latitude;
  final String? longitude;

  const KlaviyoProfileModel({
    required this.id,
    required this.email,
    this.phoneNumber,
    this.firstName,
    this.lastName,
    this.address1,
    this.region,
    this.latitude,
    this.longitude,
  });

  @override
  List<Object?> get props =>
      [id, email, phoneNumber, lastName, address1, region, latitude, longitude];

  @override
  String toString() =>
      'ProfileModel(id: $id, email: $email, phoneNumber: $phoneNumber, lastName: $lastName, address1: $address1, region: $region, latitude: $latitude, longitude: $longitude)';

  Map<String, dynamic> toJson() => {
        'external_id': id,
        'email': email,
        'phone_number': phoneNumber ?? '',
        'first_name': firstName ?? '',
        'last_name': lastName ?? '',
        'address1': address1 ?? '',
        'region': region ?? '',
        'latitude': latitude ?? '',
        'longitude': longitude ?? '',
      };
}