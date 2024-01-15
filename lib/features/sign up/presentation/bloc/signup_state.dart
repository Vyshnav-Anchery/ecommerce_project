part of 'signup_bloc.dart';

sealed class SignupState {}

final class SignupInitial extends SignupState {}

class SignupActionState extends SignupState {}

class LoginPasswordToggledActionState extends SignupActionState {}

class LoginSuccessfullState extends SignupActionState {}
