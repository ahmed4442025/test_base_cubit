import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_base_cubit/app/app/app.dart';
import 'package:test_base_cubit/app/app/get_is.dart';
import 'package:test_base_cubit/modules/shared/cubit/bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initAppModule();
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}
