import 'package:dartz/dartz.dart';
import 'package:test_locker_app/core/error/failure.dart';
import 'package:test_locker_app/core/usecase/usecase.dart';
import 'package:test_locker_app/features/home/domain/entities/locker_entity.dart';
import 'package:test_locker_app/features/home/domain/repositories/home_repository.dart';

class FetchItems extends UseCase<LockerEntity, NoFetchParams> {
  final HomeRepository homeRepository;

  FetchItems({required this.homeRepository});

  @override
  Future<Either<Failure, LockerEntity>> call(NoFetchParams params) async {
    return await homeRepository.fetchItems();
  }
}

class NoFetchParams {}
