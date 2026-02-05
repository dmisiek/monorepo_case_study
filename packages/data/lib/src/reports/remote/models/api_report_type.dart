import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum ApiReportType { stops, distance }

extension ApiReportTypeMapper on ApiReportType {
  ReportType toExternal() => switch (this) {
    ApiReportType.stops => ReportType.stops,
    ApiReportType.distance => ReportType.distance,
  };
}
