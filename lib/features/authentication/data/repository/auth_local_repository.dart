import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workwise/features/authentication/data/datasource/local/auth_local_data_source.dart';
import 'package:workwise/features/authentication/domain/entity/auth_entity.dart';
import 'package:workwise/features/authentication/domain/repository/auth_repository.dart';


import '../../../../core/error/failure.dart';

final authLocalRepositoryProvider = Provider<IAuthRepository>((ref) {
  return AuthLocalRepository(
    ref.read(authLocalDataSourceProvider),
  );
});

class AuthLocalRepository implements IAuthRepository {
  final AuthLocalDataSource _authLocalDataSource;

  AuthLocalRepository(this._authLocalDataSource);

  @override
  Future<Either<Failure, bool>> loginUser(String email, String password) {
    return _authLocalDataSource.loginUser(email, password);
  }

  @override
  Future<Either<Failure, bool>> registerUser(AuthEntity user) {
    return _authLocalDataSource.registerUser(user);
  }
}
