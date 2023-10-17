import 'package:json_annotation/json_annotation.dart';
import 'package:test_locker_app/features/home/domain/entities/post_entity.dart';
part 'post_model.g.dart';

@JsonSerializable()
final class PostModel extends PostEntity {
  PostModel({
    required super.id,
    required super.userId,
    required super.title,
    required super.description,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);

  Map<String, dynamic> toJson() => _$PostModelToJson(this);
}
