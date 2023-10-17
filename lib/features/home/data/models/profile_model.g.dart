// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) => ProfileModel(
      username: json['username'] as String,
      name: json['name'] as String,
      id: json['id'] as int,
      phone: json['phone'] as String,
      email: json['email'] as String,
      website: json['website'] as String,
      adress: json['adress'] as String,
    );

Map<String, dynamic> _$ProfileModelToJson(ProfileModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'id': instance.id,
      'phone': instance.phone,
      'email': instance.email,
      'website': instance.website,
      'adress': instance.adress,
    };
