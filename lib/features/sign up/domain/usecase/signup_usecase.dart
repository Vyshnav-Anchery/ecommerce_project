import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/errors/failure.dart';

import '../entities/signup_entity.dart';
import '../repositories/signup_repository.dart';

class SignUpUseCase {
  final SignUpRepository repository;

  SignUpUseCase({required this.repository});

  Future<Either<Failure, void>> execute({required SignUpEntities entities}) =>
      repository.signUp(entities: entities);

  loginUseCase({required SignUpEntities params}) async =>
      await repository.signUp(entities: params);
}
