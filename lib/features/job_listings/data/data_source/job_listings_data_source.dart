
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workwise/features/job_listings/data/model/job_listings_model.dart';
import '../../../../app/constants/api_endpoints.dart';
import '../../../../core/error/failure.dart';
import '../../../../core/networking/remote/http_service.dart';

final jobListingsDataSourceProvider = Provider.autoDispose(
        (ref) => JobListingsDataSource(ref.read(httpServiceProvider)));

class JobListingsDataSource {
  final Dio _dio;
  JobListingsDataSource(this._dio);
  Future<Either<Failure, List<JobListingsModel>>> getJobListings(int page) async {
    try {
      final response = await _dio.get(
        ApiEndpoints.listings,
        queryParameters: {
          '_page': page,
          '_limit': ApiEndpoints.limitPage,
        },
      );
      final data = response.data as List;
      final listings = data.map((e) => JobListingsModel.fromJson(e)).toList();
      return Right(listings);
    } on DioException catch (e) {

      return Left(
        Failure(
          error: e.error.toString(),
          statusCode: e.response?.statusCode.toString() ?? '0',
        ),
      );
    }
  }
}