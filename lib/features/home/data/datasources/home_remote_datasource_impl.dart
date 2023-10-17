import 'package:dio/dio.dart';
import 'package:test_locker_app/core/endpoints.dart';
import 'package:test_locker_app/features/home/data/models/locker_model.dart';
import 'package:test_locker_app/injection.container.dart';

import 'home_remote_datasource.dart';

class HomeRemoteDatasourceImplements implements HomeRemoteDatasource {
  final Dio _dio = sl<Dio>();
  @override
  Future<LockerModel> getLocker() async {
    try {
      final Response response = await _dio.get(Endpoints.getItems.endpoint);
      return LockerModel.fromJson(response.data);
    } on DioException catch (e) {
      throw e.response!.data;
    }
  }
}
