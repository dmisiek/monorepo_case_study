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

  Future<void> testMethod() async {
    try {
      await reportsRepository.get('2');
    }
    // Note: Dio is not direct dependency of app so we cant catch it!
    // on DioException {
    //
    // }
    catch (e) {
      // handle it
    }
  }
}
