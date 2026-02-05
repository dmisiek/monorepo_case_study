import 'package:domain/src/reports/value_objects/report_type.dart';

class Report {
  const Report({required this.id, required this.type});

  final String id;
  final ReportType type;
}
