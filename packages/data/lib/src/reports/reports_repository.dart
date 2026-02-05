import 'package:data/src/reports/remote/reports_remote_data_source.dart';
import 'package:data/src/reports/remote/models/api_report.dart';
import 'package:domain/domain.dart';

class ReportsRepositoryImpl implements ReportsRepository {
  const ReportsRepositoryImpl({required this.remoteDS});

  final ReportsRemoteDataSource remoteDS;

  Future<List<Report>> getPage(int page) {
    return remoteDS
        .getPage(page)
        .then((value) => value.data.map((e) => e.toExternal()).toList());
  }

  Future<Report> get(String id) {
    return remoteDS.get(id).then((value) => value.data.toExternal());
  }
}
