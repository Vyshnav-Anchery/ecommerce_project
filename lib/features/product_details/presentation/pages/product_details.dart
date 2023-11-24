import 'package:ecommerce_project/core/constants/app_texts.dart';
import 'package:ecommerce_project/features/product_details/presentation/widgets/plant_description.dart';
import 'package:ecommerce_project/features/product_details/presentation/widgets/product_image_card.dart';
import 'package:ecommerce_project/features/product_details/presentation/widgets/reviews.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).padding.top),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                        radius: 22,
                        child: Icon(Icons.arrow_back_ios_new_rounded)
                        // IconButton(
                        //     onPressed: () {},
                        //     icon: const ),
                        ),
                    Text(AppTextConstants.details,
                        style: const TextStyle(fontSize: 25)),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          size: 30,
                        )),
                  ],
                ),
              ),
              const ProductImageCard(),
              const ProductDescription(),
              const ProductReviews()
            ],
          ),
        ),
      ),
    );
  }
}
