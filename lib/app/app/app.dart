import 'package:test_base_cubit/app/app/get_is.dart';
import 'package:test_base_cubit/app/ui/string_manager.dart';
import 'package:test_base_cubit/app/ui/theme_manager.dart';
import 'package:test_base_cubit/modules/temp/cubit/temp_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_base_cubit/modules/temp/views/home_temp_view.dart';

GlobalKey<NavigatorState> navigatorKey = GlobalKey();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      // create: (context) => getIt<TempCubit>(),
      providers: [
        BlocProvider(create: (context) => getIt<TempCubit>()),
        // BlocProvider(create: (context) => TempCubit()),
        // BlocProvider(create: (context) => Cubits.tempCubit),
      ],
      child: SafeArea(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: AppStrings.appName,
          navigatorKey: navigatorKey,
          theme: AppTheme.normal,
          home: const HomeTempView(),
        ),
      ),
    );
  }
}
