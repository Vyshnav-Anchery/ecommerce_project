import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/errors/failure.dart';
import '../entities/login_entities.dart';

abstract class LoginRepository {
  Future<Either<Failure, void>> login({required LoginEntities entities});
}
