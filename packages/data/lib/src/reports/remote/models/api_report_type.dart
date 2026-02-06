import 'package:domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

enum ApiReportType {
  @JsonValue(0)
  stops,
  @JsonValue(1)
  distance,
}

extension ApiReportTypeMapper on ApiReportType {
  ReportType toExternal() => switch (this) {
    ApiReportType.stops => ReportType.stops,
    ApiReportType.distance => ReportType.distance,
  };
}
