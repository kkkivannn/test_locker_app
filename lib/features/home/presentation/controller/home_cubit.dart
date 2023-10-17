import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:test_locker_app/features/home/domain/entities/locker_entity.dart';
import 'package:test_locker_app/features/home/domain/usecases/fetch_items.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final FetchItems fetchItems;

  HomeCubit({required this.fetchItems}) : super(HomeInitial());

  Future<void> fetchLockerItems() async {
    try {
      if (state is HomeInternetErrorState) {
        emit(HomeLoadingState());
      }
      if (!await InternetConnectionChecker().hasConnection) {
        Future.delayed(const Duration(seconds: 1)).then((value) => emit(HomeInternetErrorState()));
        return;
      }
      emit(HomeLoadingState());
      final data = await fetchItems.call(NoFetchParams());
      data.fold(
        (error) => emit(HomeErrorState()),
        (response) => emit(HomeLoadedState(lockerEntity: response)),
      );
    } catch (e) {
      emit(HomeErrorState());
    }
  }
}
