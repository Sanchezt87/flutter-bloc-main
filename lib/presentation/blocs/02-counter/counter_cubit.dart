import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(5);

  void increment(int value) => emit(state + value);
  void decrement(int value) => emit(state - value);
}