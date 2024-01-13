import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../domain/entities/login_entities.dart';
import '../../domain/usecases/user_login.dart';

part 'landing_event.dart';
part 'landing_state.dart';

class LandingBloc extends Bloc<LandingEvent, LandingState> {
  final LoginUseCase userLoginUseCase;
  LandingBloc(this.userLoginUseCase) : super(LandingInitialState()) {
    on<LandingInitialEvent>(loginInitialEvent);
    on<LandingLoginPasswordVisibiltyToggleEvent>(
        loginPasswordVisibiltyToggleEvent);
    on<LoginButtonClickedEvent>(loginButtonClickedEvent);
  }

  FutureOr<void> loginPasswordVisibiltyToggleEvent(
      LandingLoginPasswordVisibiltyToggleEvent event,
      Emitter<LandingState> emit) {
    emit(LoginPasswordToggledActionState());
  }

  FutureOr<void> loginInitialEvent(
      LandingInitialEvent event, Emitter<LandingState> emit) {
    emit(LandingInitialState());
  }

  FutureOr<void> loginButtonClickedEvent(
      LoginButtonClickedEvent event, Emitter<LandingState> emit) {
    LoginEntities loginParams = LoginEntities(
        userName: event.userName, password: event.password, email: '');
    userLoginUseCase.loginUseCase(params: loginParams);
    emit(LoginSuccessfullState());
  }
}
