import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/errors/failure.dart';
import '../../domain/entities/login_entities.dart';
import '../../domain/repositories/login_repository.dart';
import '../data sources/login_data_source.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource loginDataSource;

  LoginRepositoryImpl({required this.loginDataSource});

  @override
  Future<Either<Failure, void>> login(
          {required LoginEntities entities}) async =>
      loginDataSource.userLogin(entities: entities);
}
