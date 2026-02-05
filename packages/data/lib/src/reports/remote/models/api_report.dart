import 'package:data/src/reports/remote/models/api_report_type.dart';
import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_report.g.dart';

@JsonSerializable()
class ApiReport {
  const ApiReport({required this.id, required this.type});

  factory ApiReport.fromJson(Map<String, dynamic> json) =>
      _$ApiReportFromJson(json);

  Map<String, dynamic> toJson() => _$PersonToJson(this);

  final String id;
  final ApiReportType type;
}

extension ApiReportMapper on ApiReport {
  Report toExternal() => Report(id: id, type: type.toExternal());
}
