import 'package:domain/domain.dart';

abstract interface class ReportsRepository {
  Future<List<Report>> getPage(int page);

  Future<Report> get(String id);
}
