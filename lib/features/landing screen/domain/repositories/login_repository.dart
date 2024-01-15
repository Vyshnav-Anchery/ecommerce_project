import 'package:dartz/dartz.dart';
import 'package:ecommerce_project/core/errors/failure.dart';
import '../../../../core/utils/typedef/custom_typedef.dart';
import '../entities/login_entities.dart';

abstract class LoginRepository {
  FutureEitherVoid<Failure> login({required LoginEntities entities});
}
