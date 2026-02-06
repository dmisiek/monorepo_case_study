import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:monorepo_case_study/counter/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit({
    required this.reportsRepository,
  }) : super(const CounterState());

  Report? test;

  final ReportsRepository reportsRepository;

  void increment() => emit(state.copyWith(count: state.count + 1));

  void decrement() => emit(state.copyWith(count: state.count - 1));
}
