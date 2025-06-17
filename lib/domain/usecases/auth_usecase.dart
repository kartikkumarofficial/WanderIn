import 'package:fpdart/src/either.dart';
import 'package:wanderin/core/error/failures.dart';
import 'package:wanderin/core/usecases/usecases.dart';
import 'package:wanderin/domain/repositories/auth_repository.dart';

class UserSignUp implements UseCase<String, UserSignUpParameters> {

  final AuthRepository authRepository; // we dont want usecase to have a dependency on the repository
  UserSignUp(this.authRepository);

  @override
  Future<Either<Failure, String>> call(UserSignUpParameters parameters) async {
    return await authRepository.signUpWithEmailPassword(
        name: parameters.name,
        email: parameters.email,
        password: parameters.password,
        confirmPassword: parameters.confirmPassword
    );
  }

}

class UserSignUpParameters {
  final String email;
  final String password;
  final String name;
  final String confirmPassword;

  UserSignUpParameters(this.email, this.password, this.name, this.confirmPassword);
}