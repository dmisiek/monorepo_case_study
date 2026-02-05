import 'package:data/src/common/models/api_response.dart';
import 'package:data/src/reports/remote/models/api_report.dart';
import 'package:dio/dio.dart';

class ReportsRemoteDataSource {
  const ReportsRemoteDataSource({required this.httpClient});

  final Dio httpClient;

  Future<ApiResponse<List<ApiReport>>> getPage(int page) {
    throw UnimplementedError();
  }

  Future<ApiResponse<ApiReport>> get(String id) {
    throw UnimplementedError();
  }
}
