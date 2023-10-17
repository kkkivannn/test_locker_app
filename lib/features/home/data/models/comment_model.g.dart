// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CommentModel _$CommentModelFromJson(Map<String, dynamic> json) => CommentModel(
      userId: json['userId'] as int,
      id: json['id'] as int,
      text: json['text'] as String,
      postId: json['postId'] as int,
    );

Map<String, dynamic> _$CommentModelToJson(CommentModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'id': instance.id,
      'text': instance.text,
      'postId': instance.postId,
    };
