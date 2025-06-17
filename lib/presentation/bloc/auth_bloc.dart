import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wanderin/domain/usecases/auth_usecase.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final UserSignUp _userSignUp; // creating pvt variable here so its not accessible
  AuthBloc({ // doing this way coz of named arguements
    required UserSignUp userSignUp,
  }) : _userSignUp=userSignUp,
  //
        super(AuthInitial()) {
    on<AuthSignUp>(_onAuthSignUp);

  }
  Future<void> _onAuthSignUp(AuthSignUp event,Emitter<AuthState> emit )async  {
    emit(AuthLoading());

    final res = await _userSignUp(
      UserSignUpParameters(
          email:event.email,
          password: event.password,
          name: event.name,
          confirmPassword: event.confirmPassword),);

    res.fold(
            (failure)=>emit(AuthFailure(failure.message)) ,
            (uid)=> emit(AuthSuccess(uid)),);

  }

}
