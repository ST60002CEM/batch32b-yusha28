import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workwise/core/error/failure.dart';
import 'package:workwise/core/networking/local/hive_service.dart';
import 'package:workwise/features/authentication/data/model/auth_hive_model.dart';
import 'package:workwise/features/authentication/domain/entity/auth_entity.dart';

final authLocalDataSourceProvider = Provider(
  (ref) => AuthLocalDataSource(
    ref.read(hiveServiceProvider),
    ref.read(authHiveModelProvider),
  ),
);

class AuthLocalDataSource {
  final HiveService _hiveService;
  final AuthHiveModel _authHiveModel;

  AuthLocalDataSource(this._hiveService, this._authHiveModel);

  Future<Either<Failure, bool>> register(AuthEntity user) async {
    try {
      await _hiveService.register(_authHiveModel.toHiveModel(user));
      return const Right(true);
    } catch (e) {
      return Left(Failure(error: e.toString()));
    }
  }

  Future<Either<Failure, bool>> login(
    String username,
    String password,
  ) async {
    try {
      AuthHiveModel? users = await _hiveService.login(username, password);
      return const Right(true);
    } catch (e) {
      return Left(Failure(error: e.toString()));
    }
  }
}