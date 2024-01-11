import 'package:ecommerce_project/features/product_details/presentation/widgets/plant_description.dart';
import 'package:ecommerce_project/features/product_details/presentation/widgets/product_image_card.dart';
import 'package:ecommerce_project/features/product_details/presentation/widgets/reviews.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_theme.dart';
import '../../../../core/utils/common widgets/custom_elevated_button.dart';
import '../widgets/sliver_appbar.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterAlignment: AlignmentDirectional.center,
      persistentFooterButtons: [
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
      body: const CustomScrollView(
        slivers: [
          SlIverAppbarWidget(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  // SizedBox(height: MediaQuery.of(context).padding.top),
                  ProductImageCard(),
                  ProductDescription(),
                  SizedBox(height: 20),
                  ProductReviews(),
                  // SizedBox(
                  //     height: MediaQuery.sizeOf(context).height -
                  //         (floatingButtonHeight))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
