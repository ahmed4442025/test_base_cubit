import 'package:test_base_cubit/app/app/get_is.dart';
import 'package:test_base_cubit/modules/temp/cubit/temp_cubit.dart';
import 'package:test_base_cubit/modules/shared/cubit/block_builder_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeTempView extends StatefulWidget {
  const HomeTempView({super.key});

  @override
  State<HomeTempView> createState() => _HomeTempViewState();
}

class _HomeTempViewState extends State<HomeTempView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("call api 1"),
        onPressed: () {
          getIt<TempCubit>().fetchDataApi1();
        },
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),

          // listening to api 1
          BlockBuilderWidget<TempCubit, TempStateType>(
            types: const [TempStateType.sliders],
            body: () => const Text("body Sliders"),
            loading: () => const CircularProgressIndicator(),
            error: () => const Text("error"),
          ),
          const SizedBox(height: 50),

          // listening to api 2
          BlockBuilderWidget<TempCubit, TempStateType>(
            types: const [TempStateType.api2],
            body: () => const Text("body api 2"),
            loading: () => const CircularProgressIndicator(),
            error: () => const Text("error"),
          ),
          const SizedBox(height: 50),

          // listening to api_1 + api_2
          BlockBuilderWidget<TempCubit, TempStateType>(
            types: const [TempStateType.api2, TempStateType.sliders],
            body: () => const Text("body api 2 + sliders"),
            loading: () => const CircularProgressIndicator(),
            error: () => const Text("error"),
          ),
        ],
      ),
    );
  }
}
