import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:wanderin/domain/usecases/auth_usecase.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SupabaseClient _supabase = Supabase.instance.client;

  AuthBloc() : super(AuthInitial()) {
    on<AuthSignUp>(_onSignUp);
  }


  Future<void> _onSignUp(AuthSignUp event, Emitter<AuthState> emit) async {
    emit(AuthLoading());
    try {
      if (event.password != event.confirmPassword) {
        emit(AuthFailure("Passwords do not match"));
      } else if (event.password.length < 6) {
        emit(AuthFailure("Password too short"));
        return;
      }

      final response = await _supabase.auth.signUp(
          email: event.email, password: event.password, data: {
            'name':event.name
      });

      final user = response.user;
      final session = response.session;

      if(user==null){
        emit(AuthFailure("User Creation Failed"));
        return;
      }
      emit(AuthSuccess("Sign Up Successful! Please verify your email."));
  }
  catch
  (e){
    emit(AuthFailure("Something went wrong:${e.toString()}"));
  }

}

}
