part of 'login_bloc.dart';

sealed class LoginState {}

final class LoginInitialState extends LoginState {}

class LoginActionState extends LoginState {}

class LoginPasswordToggledActionState extends LoginActionState {}
