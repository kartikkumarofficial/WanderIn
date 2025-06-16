
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class LoginBloc{
  final _loginEmail = BehaviorSubject<String>();
  final _loginPassword = BehaviorSubject<String>();

  dispose(){
    _loginEmail.close();
    _loginPassword.close;
  }

}