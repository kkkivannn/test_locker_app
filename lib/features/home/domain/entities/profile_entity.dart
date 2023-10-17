import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
abstract class ProfileEntity {
  @JsonKey(name: "username")
  final String username;
  @JsonKey(name: "name")
  final String name;
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "phone")
  final String phone;
  @JsonKey(name: "email")
  final String email;
  @JsonKey(name: "website")
  final String website;
  @JsonKey(name: "adress")
  final String adress;

  ProfileEntity({
    required this.username,
    required this.name,
    required this.id,
    required this.phone,
    required this.email,
    required this.website,
    required this.adress,
  });
}
