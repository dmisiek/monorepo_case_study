import 'package:json_annotation/json_annotation.dart';

part 'state.g.dart';

@JsonSerializable()
class State {
  const State(this.test);

  factory State.fromJson(Map<String, dynamic> json) => _$StateFromJson(json);

  final String test;
}
