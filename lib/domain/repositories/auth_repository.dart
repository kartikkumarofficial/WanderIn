import 'package:fpdart/fpdart.dart';
import 'package:wanderin/core/error/failures.dart';



//implementing all the fetching we do from firebase / supabase
abstract interface class AuthRepository{

  Future<Either<Failure,String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
    required String confirmPassword,
});

  Future<Either<Failure,String>> logInWithEmailPassword({

    required String email,
    required String password,

  });


}