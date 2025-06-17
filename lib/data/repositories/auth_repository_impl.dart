import 'package:fpdart/fpdart.dart';
import 'package:wanderin/core/error/exceptions.dart';
import 'package:wanderin/core/error/failures.dart';
import 'package:wanderin/data/datasources/auth_remote_data_source.dart';
import 'package:wanderin/domain/repositories/auth_repository.dart';

class AuthRepositoryImplementation implements AuthRepository {
  final AuthRemoteDataSource
  authRemoteDataSource; //depending on the interface that we created - we dont care how the implementation was done , we just wanna see if the method exists or not in our contract

  AuthRepositoryImplementation(this.authRemoteDataSource);

  @override
  Future<Either<Failure, String>> logInWithEmailPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement logInWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
  }) async {
    try {
      final userId = await authRemoteDataSource.signUpWithEmailPassword(
        name: name,
        email: email,
        password: password,
        confirmPassword: confirmPassword,
      );

      return right(userId);

    } on ServerException catch (e) {
      return left(Failure(e.message));

    }

  }
}
