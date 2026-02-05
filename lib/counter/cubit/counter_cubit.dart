import 'package:bloc/bloc.dart';
import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit({
    required this.reportsRepository,
  }) : super(0);

  Report? test;

  final ReportsRepository reportsRepository;

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);
}
