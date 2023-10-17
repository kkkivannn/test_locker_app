import 'package:json_annotation/json_annotation.dart';
import 'package:test_locker_app/features/home/data/models/comment_model.dart';
import 'package:test_locker_app/features/home/data/models/locker_item_model.dart';
import 'package:test_locker_app/features/home/data/models/post_model.dart';
import 'package:test_locker_app/features/home/data/models/profile_model.dart';
import 'package:test_locker_app/features/home/domain/entities/locker_entity.dart';

part 'locker_model.g.dart';

@JsonSerializable()
final class LockerModel extends LockerEntity {
  @JsonKey(name: "profile")
  final List<ProfileModel> profileModel;

  @JsonKey(name: "posts")
  final List<PostModel> postsModel;

  @JsonKey(name: "comments")
  final List<CommentModel> commentsModel;

  @JsonKey(name: "lockers")
  final List<LockerItemModel> lockersModel;
  LockerModel({
    required this.profileModel,
    required this.postsModel,
    required this.commentsModel,
    required this.lockersModel,
  }) : super(
          profile: profileModel,
          posts: postsModel,
          comments: commentsModel,
          lockers: lockersModel,
        );

  factory LockerModel.fromJson(Map<String, dynamic> json) => _$LockerModelFromJson(json);

  Map<String, dynamic> toJson() => _$LockerModelToJson(this);
}
