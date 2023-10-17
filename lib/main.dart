import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_locker_app/features/home/presentation/controller/home_cubit.dart';
import 'package:test_locker_app/features/home/presentation/view/home_view.dart';

import 'injection.container.dart' as di;
import 'injection.container.dart';

Future<void> main() async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<HomeCubit>(create: (context) => HomeCubit(fetchItems: sl())),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'AliLock',
        home: HomePage(),
      ),
    );
  }
}
