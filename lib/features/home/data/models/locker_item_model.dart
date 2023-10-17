import 'package:json_annotation/json_annotation.dart';
import 'package:test_locker_app/features/home/domain/entities/locker_item_entity.dart';

part 'locker_item_model.g.dart';

@JsonSerializable()
final class LockerItemModel extends LockerItemEntity {
  LockerItemModel({
    required super.id,
    required super.code,
    required super.title,
    required super.isLock,
  });
  factory LockerItemModel.fromJson(Map<String, dynamic> json) => _$LockerItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$LockerItemModelToJson(this);
}
