import 'package:ecommerce_project/core/constants/app_constants.dart';
import 'package:ecommerce_project/core/constants/app_theme.dart';
import 'package:ecommerce_project/core/utils/common%20widgets/common_textfield.dart';
import 'package:ecommerce_project/features/sign%20up/domain/usecase/signup_usecase.dart';
import 'package:ecommerce_project/features/sign%20up/presentation/bloc/signup_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double cardWidth = MediaQuery.sizeOf(context).height / 2;
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    TextEditingController emailEditingController = TextEditingController();
    TextEditingController nameEditingController = TextEditingController();
    TextEditingController passwordEditingController = TextEditingController();
    bool isObscure = true;
    SignupBloc signUpBloc = SignupBloc(context.read<SignUpUseCase>());
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: BlocConsumer<SignupBloc, SignupState>(
          bloc: signUpBloc,
          listenWhen: (previous, current) => current is SignupActionState,
          buildWhen: (previous, current) => current is! SignupActionState,
          listener: (context, state) {
            if (state is LoginPasswordToggledActionState) {
              isObscure = !isObscure;
              signUpBloc.add(SignupInitialEvent());
            }
          },
          builder: (context, state) {
            return Center(
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("BloomBay", style: AppConstants.loginAppNameStyle),
                    // SvgPicture.asset(
                    //   "assets/undraw_flowers_vx06.svg",
                    //   height: 170,
                    //   // width: 180,
                    //   alignment: Alignment.center,
                    // ),
                    SizedBox(
                      width: cardWidth,
                      child: Card(
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
                                "Login",
                                style: AppConstants.loginHeadingStyle,
                              ),
                              const SizedBox(height: 20),
                              Form(
                                  key: formKey,
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
                                        onpressed: () => signUpBloc.add(
                                            SignupPasswordVisibiltyToggleEvent()),
                                      ),
                                      const SizedBox(height: 20),
                                    ],
                                  )),
                              SizedBox(
                                width: cardWidth / 3,
                                child: ElevatedButton(
                                    style: const ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Colors.orangeAccent)),
                                    onPressed: () => signUpBloc.add(
                                        SignupButtonClickedEvent(
                                            userName:
                                                nameEditingController.text,
                                            password:
                                                passwordEditingController.text,
                                            email:
                                                emailEditingController.text)),
                                    child: const Text(
                                      "Sign Up",
                                      style: TextStyle(color: Colors.black),
                                    )),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  const Text("Dont have an account?"),
                                  TextButton(
                                      onPressed: () {},
                                      child: const Text(
                                        "Sign Up",
                                        style: TextStyle(
                                            color: Colors.white,
                                            decoration:
                                                TextDecoration.underline),
                                      ))
                                ],
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
