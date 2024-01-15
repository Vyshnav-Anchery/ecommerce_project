import '../../domain/entities/login_entities.dart';

class LoginModel extends LoginEntities {
  const LoginModel({
    required String email,
    required String password,
  }) : super(email: email, password: password);

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(email: json['email'], password: json['password']);
  }
  Map<String, dynamic> toJson() => {'email': email, 'password': password};
}
