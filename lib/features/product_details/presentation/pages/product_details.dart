import 'package:ecommerce_project/features/product_details/presentation/widgets/plant_description.dart';
import 'package:ecommerce_project/features/product_details/presentation/widgets/product_image_card.dart';
import 'package:ecommerce_project/features/product_details/presentation/widgets/reviews.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_floating_button.dart';
import '../widgets/sliver_appbar.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    double floatingButtonHeight = MediaQuery.sizeOf(context).height / 14;
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingButton(height: floatingButtonHeight),
      body: CustomScrollView(
        slivers: [
          const SlIverAppbarWidget(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(
                  // top: MediaQuery.of(context).padding.top,
                  left: 15,
                  right: 15,
                  bottom: floatingButtonHeight),
              child: const Column(
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
