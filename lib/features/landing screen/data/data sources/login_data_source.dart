import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce_project/core/errors/failure.dart';
import 'package:ecommerce_project/core/utils/apis/api_links.dart';
import '../../../../core/utils/typedef/custom_typedef.dart';
import '../../domain/entities/login_entities.dart';

abstract class LoginDataSource {
  FutureEitherVoid<Failure> userLogin({required LoginEntities entities});
}

class LoginDataSourceImpl implements LoginDataSource {
  final Dio dio = Dio();
  @override
  FutureEitherVoid<Failure> userLogin({required LoginEntities entities}) async {
    final Response response;
    try {
      log(entities.email);
      log(entities.password);
      response = await dio.post("$apiMainLink/users/signin?apikey=$apiKey",
          data: {
            'email': entities.email,
            'password': entities.password,
          },
          options: Options(headers: {
            'Content-Type': 'application/json',
          }));
      if (response.statusCode == 200) {
        log("success");
        return Right(null);
      }
      log(entities.email);
      log(entities.password);
      return Right(null);
    } on DioException catch (e) {
      if (e.response != null && e.response!.statusCode == 200) {
        log("message 200");
        return Left(ApiFailure(
            message: e.message!, statusCode: e.response!.statusCode!));
      }
      if (e.response != null && e.response!.statusCode == 401) {
        log("message 401");
        return Left(ApiFailure(
            message: e.message!, statusCode: e.response!.statusCode!));
      }

      log("$apiMainLink/signin?apikey=$apiKey");
      log(e.response!.statusCode.toString());
      log(e.toString());
      return Left(
          ApiFailure(message: e.message!, statusCode: e.response!.statusCode!));
    }
  }
}
