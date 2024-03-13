import 'package:bloc/bloc.dart';

class BaseCubit<StatesEnum> extends Cubit<BaseState<StatesEnum>> {
  BaseCubit(StatesEnum currentState) : super(BaseState(currentState)) {
    init();
  }

  final Map<StatesEnum, StateType> _stateMap = {};

  StateType stateOf(StatesEnum state) => _stateMap[state] ?? StateType.done;

  void fire(StatesEnum type, [StateType? stateType]) {
    if (stateType != null) _stateMap[type] = stateType;
    emit((BaseState(type)));
  }

  void init() {}
}

enum StateType { loading, done, error }

class BaseState<StatesEnum> {
  StatesEnum type;

  BaseState(this.type);

  @override
  String toString() => 'BaseState{type: $type}';
}

extension StateTypeEX on StateType {
  bool isLoading() => this == StateType.loading;

  bool isDone() => this == StateType.done;

  bool isError() => this == StateType.error;
}
