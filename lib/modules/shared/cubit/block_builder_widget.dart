import 'package:test_base_cubit/app/app/get_is.dart';
import 'package:test_base_cubit/modules/shared/cubit/bse_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlockBuilderWidget<Cubit extends BaseCubit<S>, S> extends StatelessWidget {
  final List<S> types;
  final Widget Function() body;
  final Widget Function()? loading;
  final Widget Function()? error;

  const BlockBuilderWidget({super.key, required this.body, this.loading, this.error, required this.types});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Cubit, BaseState>(
      buildWhen: (p, c) => types.contains(c.type),
      builder: (context, state) {
        BaseCubit cubit = getIt<Cubit>();
        // log("builder context.read<Cubit>().stateOf(state.type) ${cubit.stateOf(state.type)}", level: 1);
        if (cubit.stateOf(state.type).isDone()) return body();
        if (cubit.stateOf(state.type).isLoading()) return loading != null ? loading!() : const SizedBox();
        if (cubit.stateOf(state.type).isError()) return error != null ? error!() : const SizedBox();
        return const SizedBox();
      },
    );
  }
}
