import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/errors/failure.dart';

import '../entities/signup_entity.dart';

abstract class SignUpRepository {
  Future<Either<Failure, void>> signUp({required SignUpEntities entities});
}
