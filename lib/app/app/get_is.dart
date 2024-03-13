import 'package:test_base_cubit/modules/temp/cubit/temp_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> initAppModule() async {
  await setUpCubits();
}


Future<void> setUpCubits() async {
  getIt.registerLazySingleton<TempCubit>(() => TempCubit());
}
