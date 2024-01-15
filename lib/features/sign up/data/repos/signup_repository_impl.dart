import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/errors/failure.dart';
import '../../domain/entities/signup_entity.dart';
import '../../domain/repositories/signup_repository.dart';
import '../data sources/signnup_datasource.dart';

class SignUpRepositoryImpl implements SignUpRepository {
  final SignUpDataSource signUpDataSource;

  SignUpRepositoryImpl({required this.signUpDataSource});

  @override
  Future<Either<Failure, void>> signUp({required SignUpEntities entities}) =>
      signUpDataSource.userSignUp(entities: entities);
}
