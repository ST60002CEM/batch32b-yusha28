import 'dart:io';
 
import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:workwise/core/error/failure.dart';
import 'package:workwise/features/authentication/data/datasource/remote/auth_remote_data_source.dart';
import 'package:workwise/features/authentication/domain/entity/auth_entity.dart';
import 'package:workwise/features/authentication/domain/repository/auth_repository.dart';
 
final authRemoteRepositoryProvider = Provider<IAuthRepository>((ref) {
  return AuthRemoteRepository(
    ref.read(authRemoteDataSourceProvider),
  );
});
 
class AuthRemoteRepository implements IAuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
 
  AuthRemoteRepository(this._authRemoteDataSource);
 
  @override
  Future<Either<Failure, bool>> login(String email, String password) {
    return _authRemoteDataSource.login(email, password);
  }
 
  @override
  Future<Either<Failure, bool>> register(AuthEntity user) {
    return _authRemoteDataSource.register(user);
  }
 
  // @override
  // Future<Either<Failure, String>> uploadProfilePicture(File file) {
  //   // TODO: implement uploadProfilePicture
  //   return _authRemoteDataSource.uploadProfilePicture(file);
  // }
}