part of 'signup_bloc.dart';

sealed class SignupEvent {}

class SignupInitialEvent extends SignupEvent {}

class SignupPasswordVisibiltyToggleEvent extends SignupEvent {}

class SignupButtonClickedEvent extends SignupEvent {
  String email;
  String password;
  String userName;
  SignupButtonClickedEvent(
      {required this.userName, required this.email, required this.password});
}
