import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_locker_app/core/constants.dart';
import 'package:test_locker_app/core/functions/functions.dart';
import 'package:test_locker_app/features/home/presentation/controller/home_cubit.dart';
import 'package:test_locker_app/features/home/presentation/widgets/alilock_title_widget.dart';
import 'package:test_locker_app/features/home/presentation/widgets/my_lockers_widget.dart';

class MyLockerPage extends StatelessWidget {
  const MyLockerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeState>(
      listener: (context, state) {
        if (state is HomeInternetErrorState) {
          DialogFunctions.showInternetErrorDialog(context);
        }
      },
      builder: (context, state) {
        if (state is HomeInitial) {
          context.read<HomeCubit>().fetchLockerItems();
        } else if (state is HomeErrorState) {
          return const Scaffold(
            backgroundColor: Color(0xffF1F6F4),
            body: Center(
              child: Text("Error"),
            ),
          );
        } else if (state is HomeLoadedState) {
          return Scaffold(
            backgroundColor: const Color(0xffF1F6F4),
            appBar: PreferredSize(
              preferredSize: const Size(double.infinity, 10),
              child: AppBar(
                backgroundColor: const Color(0xffF1F6F4),
                elevation: 0,
              ),
            ),
            body: Column(
              children: [
                const AlilockTitleWidget(),
                MyLockersWidget(lockerEntity: state.lockerEntity),
              ],
            ),
          );
        }
        return Scaffold(
          backgroundColor: const Color(0xffF1F6F4),
          body: Center(
            child: CircularProgressIndicator.adaptive(
              valueColor: AlwaysStoppedAnimation<Color>(ColorStyle.kPrimaryColor),
            ),
          ),
        );
      },
    );
  }
}
