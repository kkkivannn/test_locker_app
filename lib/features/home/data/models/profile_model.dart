import 'package:json_annotation/json_annotation.dart';
import 'package:test_locker_app/features/home/domain/entities/profile_entity.dart';
part 'profile_model.g.dart';
@JsonSerializable()
final class ProfileModel extends ProfileEntity {
  ProfileModel({
    required super.username,
    required super.name,
    required super.id,
    required super.phone,
    required super.email,
    required super.website,
    required super.adress,
  });
  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

    Map<String, dynamic> toJson() => _$ProfileModelToJson(this);
}
