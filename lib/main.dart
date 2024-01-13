import 'package:ecommerce_project/features/home_screen/presentation/bloc/home_bloc.dart';
import 'package:ecommerce_project/features/login/data/data%20sources/login_data_source.dart';
import 'package:ecommerce_project/features/login/data/repos/login_repository_impl.dart';
import 'package:ecommerce_project/features/login/domain/repositories/login_repository.dart';
import 'package:ecommerce_project/features/login/domain/usecases/user_login.dart';
import 'package:ecommerce_project/features/login/presentation/bloc/login_bloc.dart';
import 'package:ecommerce_project/features/login/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'core/constants/app_theme.dart';
import 'features/home_screen/presentation/pages/homescreen.dart';

void main() {
  runApp(MultiRepositoryProvider(
      providers: [
        RepositoryProvider<LoginRepository>(
          create: (context) =>
              LoginRepositoryImpl(loginDataSource: LoginDataSourceImpl()),
        ),
      ],
      child: MultiProvider(providers: [
        Provider<LoginUseCase>(
          create: (context) =>
              LoginUseCase(repository: context.read<LoginRepository>()),
        )
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
          create: (context) => LoginBloc(context.read<LoginUseCase>()),
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
