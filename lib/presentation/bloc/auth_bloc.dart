import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wanderin/domain/usecases/auth_usecase.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent,AuthState>{
  AuthBloc(): super(AuthInitial()){
    on<AuthSignUp>(_onSignUp);
  }


  Future<void> _onSignUp(AuthSignUp event , Emitter<AuthState> emit)
  async{
    emit(AuthLoading());
    try{
      if(event.password!=event.confirmPassword){
        emit(AuthFailure("Passwords do not match"));
      }else if(event.password.length<6){
        emit(AuthFailure("Password too short"));
      }else{
        //todo call signup logic from usecase
        emit(AuthSuccess("Sign up successful"));
      }
    }catch(e){
      emit(AuthFailure("Something went wrong"));
    }

  }

}
