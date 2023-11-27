import 'package:ecommerce_project/core/constants/app_theme.dart';
import 'package:ecommerce_project/core/utils/common%20widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  final double height;
  const CustomFloatingButton({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: MediaQuery.sizeOf(context).width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomElevatedButton(
            color: Colors.black,
            text: "Add to cart",
            onPressed: () {},
          ),
          CustomElevatedButton(
            color: AppThemeConstants.offerCardColor,
            text: "Buy now",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
