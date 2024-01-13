part of 'landing_bloc.dart';

sealed class LandingEvent {}

class LandingInitialEvent extends LandingEvent {}

class LandingLoginPasswordVisibiltyToggleEvent extends LandingEvent {}

class LoginButtonClickedEvent extends LandingEvent {
  String userName;
  String password;
  LoginButtonClickedEvent({required this.userName, required this.password});
}
