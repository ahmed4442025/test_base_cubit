import 'package:test_base_cubit/app/app/get_is.dart';
import 'package:test_base_cubit/modules/temp/cubit/temp_cubit.dart';

abstract class Cubits {
  static TempCubit get tempCubit => getIt<TempCubit>();
}
