import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:ecommerce_project/core/utils/apis/api_links.dart';
import 'package:ecommerce_project/features/sign%20up/domain/entities/signup_entity.dart';

abstract class SignUpDataSource {
  userSignUp({required SignUpEntities entities});
}

class SignUpDataSourceImpl implements SignUpDataSource {
  final Dio dio = Dio();
  @override
  userSignUp({required SignUpEntities entities}) async {
    final response = await dio.post(
      "$apiMainLink/users?apikey=$apiKey",
      data: {
        'email': entities.email,
        'password': entities.password,
        'username': entities.userName,
      },
    );
    if (response.statusCode == 200) {
      log("success");
      return true;
    }
    log(entities.email);
    log(entities.password);
  }
}
