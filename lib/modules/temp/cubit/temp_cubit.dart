import 'package:test_base_cubit/modules/shared/cubit/bse_cubit.dart';

enum TempStateType { sliders, api2, sliderDelete }

class TempCubit extends BaseCubit<TempStateType> {
  TempCubit() : super(TempStateType.sliders) {
    print("from super");
  }

  Future<void> fetchDataApi1() async {
    print("fetchDataApi1");
    fire(TempStateType.sliders, StateType.loading);
    await Future.delayed(const Duration(seconds: 2));
    fire(TempStateType.sliders, StateType.done);
  }

  Future<void> fetchDataApi2() async {
    print("fetchDataApi1");
    fire(TempStateType.api2, StateType.loading);
    await Future.delayed(const Duration(seconds: 2));
    fire(TempStateType.api2, StateType.done);
  }
}
