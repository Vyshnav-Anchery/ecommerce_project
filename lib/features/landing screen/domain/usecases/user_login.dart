import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/errors/failure.dart';
import '../entities/login_entities.dart';
import '../repositories/login_repository.dart';

class LoginUseCase {
  final LoginRepository repository;

  LoginUseCase({required this.repository});

  Future<Either<Failure, void>> execute({required LoginEntities entities}) =>
      repository.login(entities: entities);

  loginUseCase({required LoginEntities params}) async =>
      await repository.login(entities: params);
}
