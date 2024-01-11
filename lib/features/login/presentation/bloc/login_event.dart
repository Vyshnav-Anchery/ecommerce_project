part of 'login_bloc.dart';

sealed class LoginEvent {}

class LoginInitialEvent extends LoginEvent {}

class LoginPasswordVisibiltyToggleEvent extends LoginEvent {}
