import 'package:json_annotation/json_annotation.dart';
import 'package:test_locker_app/features/home/domain/entities/comment_entity.dart';

part 'comment_model.g.dart';

@JsonSerializable()
final class CommentModel extends CommentEntity {
  CommentModel({
    required super.userId,
    required super.id,
    required super.text,
    required super.postId,
  });

  factory CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);

  Map<String, dynamic> toJson() => _$CommentModelToJson(this);
}
