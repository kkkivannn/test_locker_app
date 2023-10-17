import 'package:json_annotation/json_annotation.dart';

abstract class LockerItemEntity {
  @JsonKey(name: "id")
  final int id;
  @JsonKey(name: "code")
  final String code;
  @JsonKey(name: "title")
  final String title;
  @JsonKey(name: "is_lock")
  final bool isLock;

  LockerItemEntity({
    required this.id,
    required this.code,
    required this.title,
    required this.isLock,
  });
}
