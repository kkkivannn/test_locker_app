part of 'home_cubit.dart';

sealed class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

final class HomeInitial extends HomeState {}

final class HomeLoadedState extends HomeState {
  const HomeLoadedState({required this.lockerEntity});
  final LockerEntity lockerEntity;

  @override
  List<Object> get props => [lockerEntity];
}

final class HomeLoadingState extends HomeState {}

final class HomeErrorState extends HomeState {}

final class HomeInternetErrorState extends HomeState {}
