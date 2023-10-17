import 'package:json_annotation/json_annotation.dart';

abstract class CommentEntity {
  @JsonKey(name: "userId")
  final int userId;
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "text")
  final String text;
  @JsonKey(name: "postId")
  final int postId;

  CommentEntity({
    required this.userId,
    required this.id,
    required this.text,
    required this.postId,
  });
}
