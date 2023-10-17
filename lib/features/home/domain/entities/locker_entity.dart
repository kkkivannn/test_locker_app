import 'package:json_annotation/json_annotation.dart';
import 'package:test_locker_app/features/home/domain/entities/comment_entity.dart';
import 'package:test_locker_app/features/home/domain/entities/locker_item_entity.dart';
import 'package:test_locker_app/features/home/domain/entities/post_entity.dart';
import 'package:test_locker_app/features/home/domain/entities/profile_entity.dart';

abstract class LockerEntity {
  @JsonKey(name: "profile")
  final List<ProfileEntity> profile;
  @JsonKey(name: "posts")
  final List<PostEntity> posts;
  @JsonKey(name: "comments")
  final List<CommentEntity> comments;
  @JsonKey(name: "lockers")
  final List<LockerItemEntity> lockers;

  LockerEntity({
    required this.profile,
    required this.posts,
    required this.comments,
    required this.lockers,
  });
}
