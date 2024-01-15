import 'package:ecommerce_project/features/sign%20up/domain/entities/signup_entity.dart';

class SignUpModel extends SignUpEntities {
  const SignUpModel({
    required String email,
    required String userName,
    required String password,
  }) : super(email: email, password: password, userName: userName);

  factory SignUpModel.fromJson(Map<String, dynamic> json) {
    return SignUpModel(
        email: json['email'],
        password: json['password'],
        userName: json['username']);
  }
  Map<String, dynamic> toJson() =>
      {'email': email, 'password': password, 'username': userName};
}
