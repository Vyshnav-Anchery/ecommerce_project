import 'package:ecommerce_project/core/errors/failure.dart';
import '../../../../core/utils/typedef/custom_typedef.dart';
import '../../domain/entities/login_entities.dart';
import '../../domain/repositories/login_repository.dart';
import '../data sources/login_data_source.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginDataSource loginDataSource;

  LoginRepositoryImpl({required this.loginDataSource});

  @override
  FutureEitherVoid<Failure> login({required LoginEntities entities}) async =>
      loginDataSource.userLogin(entities: entities);
}
