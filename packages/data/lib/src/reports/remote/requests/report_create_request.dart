import 'package:data/src/reports/remote/models/api_report_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'report_create_request.g.dart';

@JsonSerializable()
class ReportCreateRequest {
  const ReportCreateRequest({
    required this.name,
    required this.type,
  });

  final String name;
  final ApiReportType type;

  Map<String, dynamic> toJson() {
    return _$ReportCreateRequestToJson(this);
  }
}
