import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitialState()) {
    on<LoginInitialEvent>(loginInitialEvent);
    on<LoginPasswordVisibiltyToggleEvent>(loginPasswordVisibiltyToggleEvent);
  }

  FutureOr<void> loginPasswordVisibiltyToggleEvent(
      LoginPasswordVisibiltyToggleEvent event, Emitter<LoginState> emit) {
    emit(LoginPasswordToggledActionState());
  }

  FutureOr<void> loginInitialEvent(
      LoginInitialEvent event, Emitter<LoginState> emit) {
    emit(LoginInitialState());
  }
}
