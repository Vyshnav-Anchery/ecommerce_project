import 'package:ecommerce_project/features/sign%20up/domain/usecase/signup_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final SignUpUseCase signUpUseCase;
  SignupBloc(this.signUpUseCase) : super(SignupInitial()) {
    // on<SignupEvent>();
  }
}
