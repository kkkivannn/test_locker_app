import 'package:dartz/dartz.dart';
import 'package:test_locker_app/core/error/failure.dart';
import 'package:test_locker_app/features/home/data/datasources/home_remote_datasource.dart';
import 'package:test_locker_app/features/home/domain/entities/locker_entity.dart';
import 'package:test_locker_app/features/home/domain/repositories/home_repository.dart';

final class HomeRepositoryImplements implements HomeRepository {
  final HomeRemoteDatasource homeRemoteDatasource;

  HomeRepositoryImplements({required this.homeRemoteDatasource});
  @override
  Future<Either<Failure, LockerEntity>> fetchItems() async {
    try {
      final data = await homeRemoteDatasource.getLocker();
      return Right(data);
    } catch (e) {
      return Left(ServerFailure(error: e.toString()));
    }
  }
}
