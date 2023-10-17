import 'package:test_locker_app/features/home/data/models/locker_model.dart';

abstract interface class HomeRemoteDatasource {
  Future<LockerModel> getLocker();
}
