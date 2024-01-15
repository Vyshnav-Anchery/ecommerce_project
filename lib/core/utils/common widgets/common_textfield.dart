import 'package:flutter/material.dart';

class CommonTextField extends StatelessWidget {
  final bool? isPassword;
  final bool? isObscure;
  final String hintText;
  final Function()? onpressed;
  final TextEditingController textEditingController;
  const CommonTextField(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      this.onpressed,
      this.isObscure = true,
      this.isPassword = false});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure!,
      controller: textEditingController,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          border: const OutlineInputBorder(),
          hintText: hintText,
          suffixIcon: isPassword!
              ? IconButton(
                  hoverColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  onPressed: onpressed,
                  icon: isObscure!
                      ? const Icon(Icons.visibility_off)
                      : const Icon(Icons.visibility))
              : const SizedBox()),
    );
  }
}
