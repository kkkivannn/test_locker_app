// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locker_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LockerItemModel _$LockerItemModelFromJson(Map<String, dynamic> json) =>
    LockerItemModel(
      id: json['id'] as int,
      code: json['code'] as String,
      title: json['title'] as String,
      isLock: json['is_lock'] as bool,
    );

Map<String, dynamic> _$LockerItemModelToJson(LockerItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code': instance.code,
      'title': instance.title,
      'is_lock': instance.isLock,
    };
