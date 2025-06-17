part of 'auth_bloc.dart';

@immutable
sealed class AuthEvent {}

final class AuthSignUp extends AuthEvent{
  final String email;
  final String password;
  final String name;
  final String confirmPassword;

  AuthSignUp({required this.email, required this.password, required this.name, required this.confirmPassword});
}