part of 'landing_bloc.dart';

sealed class LandingEvent {}

class LandingInitialEvent extends LandingEvent {}

class LandingPasswordVisibiltyToggleEvent extends LandingEvent {}

class LoginButtonClickedEvent extends LandingEvent {
  String email;
  String password;
  LoginButtonClickedEvent({required this.email, required this.password});
}
