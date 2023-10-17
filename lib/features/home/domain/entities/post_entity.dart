import 'package:json_annotation/json_annotation.dart';

abstract class PostEntity {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "userId")
  final int userId;
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "description")
  final String description;

  PostEntity({
    required this.id,
    required this.userId,
    required this.title,
    required this.description,
  });
}
