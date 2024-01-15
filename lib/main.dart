import 'package:ecommerce_project/features/home_screen/presentation/bloc/home_bloc.dart';
import 'package:ecommerce_project/features/landing%20screen/presentation/bloc/landing_bloc.dart';
import 'package:ecommerce_project/features/sign%20up/domain/usecase/signup_usecase.dart';
import 'package:ecommerce_project/features/sign%20up/presentation/bloc/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'core/constants/app_theme.dart';
import 'features/landing screen/data/data sources/login_data_source.dart';
import 'features/landing screen/data/repos/login_repository_impl.dart';
import 'features/landing screen/domain/repositories/login_repository.dart';
import 'features/landing screen/domain/usecases/user_login.dart';
import 'features/landing screen/presentation/pages/login_screen.dart';
import 'features/sign up/data/data sources/signnup_datasource.dart';
import 'features/sign up/data/repos/signup_repository_impl.dart';
import 'features/sign up/domain/repositories/signup_repository.dart';

void main() {
  runApp(MultiRepositoryProvider(
      providers: [
        RepositoryProvider<LoginRepository>(
          create: (context) =>
              LoginRepositoryImpl(loginDataSource: LoginDataSourceImpl()),
        ),
        RepositoryProvider<SignUpRepository>(
          create: (context) =>
              SignUpRepositoryImpl(signUpDataSource: SignUpDataSourceImpl()),
        ),
      ],
      child: MultiProvider(providers: [
        Provider<LoginUseCase>(
          create: (context) =>
              LoginUseCase(repository: context.read<LoginRepository>()),
        ),
        Provider<SignUpUseCase>(
          create: (context) =>
              SignUpUseCase(repository: context.read<SignUpRepository>()),
        ),
      ], child: const MyApp())));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeBloc(),
        ),
        BlocProvider(
          create: (context) => LandingBloc(context.read<LoginUseCase>()),
        ),
        BlocProvider(
          create: (context) => SignupBloc(context.read<SignUpUseCase>()),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BloomBay',
        theme: AppThemeConstants.themeData,
        home: const LoginScreen(),
      ),
    );
  }
}
