import 'package:fpdart/src/either.dart';
import 'package:wanderin/core/error/failures.dart';
import 'package:wanderin/data/datasources/auth_remote_data_source.dart';
import 'package:wanderin/domain/repositories/auth_repository.dart';

class AuthRepositoryImplementation implements AuthRepository{
  final AuthRemoteDataSource authRemoteDataSource;
  AuthRepositoryImplementation(this.authRemoteDataSource);
  @override
  Future<Either<Failure, String>> logInWithEmailPassword({required String email, required String password}) {
    // TODO: implement logInWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signUpWithEmailPassword({required String name, required String email, required String password, required String confirmPassword}) {
    // TODO: implement signUpWithEmailPassword
    throw UnimplementedError();
  }
  
}