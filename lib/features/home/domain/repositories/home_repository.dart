import 'package:dartz/dartz.dart';
import 'package:test_locker_app/core/error/failure.dart';
import 'package:test_locker_app/features/home/domain/entities/locker_entity.dart';

abstract interface class HomeRepository {
  Future<Either<Failure, LockerEntity>> fetchItems();
}
