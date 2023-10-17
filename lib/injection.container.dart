import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:test_locker_app/core/constants.dart';
import 'package:test_locker_app/features/home/data/datasources/home_remote_datasource.dart';
import 'package:test_locker_app/features/home/data/datasources/home_remote_datasource_impl.dart';
import 'package:test_locker_app/features/home/data/repositories/home_repository_impl.dart';
import 'package:test_locker_app/features/home/domain/repositories/home_repository.dart';
import 'package:test_locker_app/features/home/domain/usecases/fetch_items.dart';
import 'package:test_locker_app/features/home/presentation/controller/home_cubit.dart';

final sl = GetIt.asNewInstance();

Future<void> init() async {
  sl.registerFactory<Dio>(() {
    if (kDebugMode) {
      return Dio(
        BaseOptions(
          baseUrl: Constants.baseUrl,
          validateStatus: (status) => status! <= 400,
        ),
      )..interceptors.add(
          PrettyDioLogger(
            requestHeader: true,
            requestBody: true,
            responseBody: true,
            error: true,
            compact: true,
            maxWidth: 90,
            responseHeader: false,
          ),
        );
    }
    return Dio(
      BaseOptions(
        baseUrl: Constants.baseUrl,
        validateStatus: (status) {
          return status! < 500;
        },
      ),
    );
  });
  //RemoteDatasource
  sl.registerLazySingleton<HomeRemoteDatasource>(() => HomeRemoteDatasourceImplements());
  //Repository
  sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImplements(homeRemoteDatasource: sl()));
  //Usecases
  sl.registerFactory(() => FetchItems(homeRepository: sl()));
  //Cubit
  sl.registerFactory<HomeCubit>(() => HomeCubit(fetchItems: sl()));
}
