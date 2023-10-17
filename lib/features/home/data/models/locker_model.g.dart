// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locker_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LockerModel _$LockerModelFromJson(Map<String, dynamic> json) => LockerModel(
      profileModel: (json['profile'] as List<dynamic>)
          .map((e) => ProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      postsModel: (json['posts'] as List<dynamic>)
          .map((e) => PostModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      commentsModel: (json['comments'] as List<dynamic>)
          .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      lockersModel: (json['lockers'] as List<dynamic>)
          .map((e) => LockerItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LockerModelToJson(LockerModel instance) =>
    <String, dynamic>{
      'profile': instance.profileModel,
      'posts': instance.postsModel,
      'comments': instance.commentsModel,
      'lockers': instance.lockersModel,
    };
