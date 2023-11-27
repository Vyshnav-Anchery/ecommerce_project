import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final Color color;
  final void Function() onPressed;
  const CustomElevatedButton(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
            fixedSize: MaterialStatePropertyAll(Size(
                MediaQuery.sizeOf(context).width / 2.3,
                MediaQuery.sizeOf(context).height / 18)),
            backgroundColor: MaterialStatePropertyAll(color)),
        onPressed: () {},
        child: Text(text));
  }
}
