import 'package:ecommerce_project/features/home_screen/presentation/bloc/home_bloc.dart';
import 'package:ecommerce_project/features/login/presentation/bloc/login_bloc.dart';
import 'package:ecommerce_project/features/login/presentation/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/constants/app_theme.dart';
import 'features/home_screen/presentation/pages/homescreen.dart';

void main() {
  runApp(const MyApp());
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
          create: (context) => LoginBloc(),
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
