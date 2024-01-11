import 'package:ecommerce_project/core/constants/app_constants.dart';
import 'package:ecommerce_project/features/add%20review/presentation/pages/add_review_screen.dart';
import 'package:flutter/material.dart';

import 'user_reviews.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      // height: MediaQuery.sizeOf(context).width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                AppConstants.reviews,
                style: const TextStyle(fontSize: 20),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AddReveiwScreen(),
                        ));
                  },
                  child: const Text("+ Write a review")),
            ],
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height,
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return const UserReviews();
                }),
          ),
        ],
      ),
    );
  }
}
