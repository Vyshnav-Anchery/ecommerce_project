import 'package:ecommerce_project/core/params/params.dart';
import 'package:ecommerce_project/features/login/domain/repositories/login_repository.dart';

class UserLogin {
  final LoginRepository repository;

  UserLogin(this.repository);
  call({required LoginParams params}) async {
    return await repository.login(params: params);
  }
}
