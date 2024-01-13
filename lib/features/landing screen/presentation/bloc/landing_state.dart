part of 'landing_bloc.dart';

sealed class LandingState {}

final class LandingInitialState extends LandingState {}

class LoginActionState extends LandingState {}

class LoginPasswordToggledActionState extends LoginActionState {}

class LoginSuccessfullState extends LoginActionState {}
