import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:ecommerce_project/core/constants/app_constants.dart';
import 'package:ecommerce_project/core/params/params.dart';
import 'package:ecommerce_project/core/utils/apis/api_links.dart';
import '../model/login_model.dart';

abstract class LoginDataSource {
  userLogin({required LoginParams params});
}

class LoginDataSourceImpl implements LoginDataSource {
  final Dio dio = Dio();
  @override
  userLogin({required LoginParams params}) async {
    final response = await dio.post(
      "$apiMainLink/users?apikey=$apiKey",
      queryParameters: params.params,
    );
    if (response.statusCode == 200) {
      log("success");
      return true;
    }
  }
}
