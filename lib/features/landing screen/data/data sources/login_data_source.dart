import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:ecommerce_project/core/constants/app_constants.dart';
import 'package:ecommerce_project/core/params/params.dart';
import 'package:ecommerce_project/core/utils/apis/api_links.dart';
import '../../domain/entities/login_entities.dart';
import '../model/login_model.dart';

abstract class LoginDataSource {
  userLogin({required LoginEntities entities});
}

class LoginDataSourceImpl implements LoginDataSource {
  final Dio dio = Dio();
  @override
  userLogin({required LoginEntities entities}) async {
    final response = await dio.post(
      "$apiMainLink/users?apikey=$apiKey",
      queryParameters: {
        'email': entities.email,
        'username': entities.userName,
        'password': entities.password,
      },
    );
    if (response.statusCode == 200) {
      log("success");
      return true;
    }
    log(entities.userName);
    log(entities.password);
  }
}
