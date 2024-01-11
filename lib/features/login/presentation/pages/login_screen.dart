import 'package:ecommerce_project/core/constants/app_constants.dart';
import 'package:ecommerce_project/core/constants/app_theme.dart';
import 'package:ecommerce_project/core/utils/common%20widgets/common_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../bloc/login_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
    TextEditingController nameEditingController = TextEditingController();
    TextEditingController emailEditingController = TextEditingController();
    TextEditingController passwordEditingController = TextEditingController();
    bool isObscure = true;
    LoginBloc loginBloc = LoginBloc();
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: BlocConsumer<LoginBloc, LoginState>(
          bloc: loginBloc,
          listenWhen: (previous, current) => current is LoginActionState,
          buildWhen: (previous, current) => current is! LoginActionState,
          listener: (context, state) {
            if (state is LoginPasswordToggledActionState) {
              isObscure = !isObscure;
              loginBloc.add(LoginInitialEvent());
            }
          },
          builder: (context, state) {
            return SizedBox(
              height: MediaQuery.sizeOf(context).height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("BloomBay", style: AppConstants.loginHeadingStyle),
                  // SvgPicture.asset(
                  //   "assets/undraw_flowers_vx06.svg",
                  //   height: 170,
                  //   // width: 180,
                  //   alignment: Alignment.center,
                  // ),
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    color: AppThemeConstants.cardColor,
                    margin: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 20),
                          Text(
                            "Sign up",
                            style: AppConstants.loginHeadingStyle,
                          ),
                          const SizedBox(height: 20),
                          Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  CommonTextField(
                                    hintText: "Username",
                                    textEditingController:
                                        nameEditingController,
                                    isObscure: false,
                                    isPassword: false,
                                  ),
                                  const SizedBox(height: 20),
                                  CommonTextField(
                                    hintText: "Email",
                                    textEditingController:
                                        emailEditingController,
                                    isObscure: false,
                                    isPassword: false,
                                  ),
                                  const SizedBox(height: 20),
                                  CommonTextField(
                                    hintText: "Password",
                                    textEditingController:
                                        passwordEditingController,
                                    isPassword: true,
                                    isObscure: isObscure,
                                    onpressed: () {
                                      loginBloc.add(
                                          LoginPasswordVisibiltyToggleEvent());
                                    },
                                  ),
                                  const SizedBox(height: 20),
                                ],
                              )),
                          SizedBox(
                            width: 200,
                            child: ElevatedButton(
                                style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Colors.orangeAccent)),
                                onPressed: () {},
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(color: Colors.black),
                                )),
                          ),
                          const SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
