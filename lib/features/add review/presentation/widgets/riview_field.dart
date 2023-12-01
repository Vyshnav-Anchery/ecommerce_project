import 'package:flutter/material.dart';

class ReviewField extends StatelessWidget {
  const ReviewField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: const TextField(
        maxLines: 5,
        decoration: InputDecoration(
            border: OutlineInputBorder(), hintText: "Type your review..."),
      ),
    );
  }
}
