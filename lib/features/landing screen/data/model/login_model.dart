import '../../domain/entities/login_entities.dart';

class LoginModel extends LoginEntities {
  const LoginModel({
    required String userName,
    required String email,
    required String password,
  }) : super(userName: userName, email: email, password: password);

  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
        userName: json['name'],
        email: json['email'],
        password: json['password']);
  }
  Map<String, dynamic> toJson() =>
      {'name': userName, 'email': email, 'password': password};
}
