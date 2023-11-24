import 'package:ecommerce_project/core/constants/app_texts.dart';
import 'package:ecommerce_project/features/home_screen/presentation/widges/categories_list.dart';
import 'package:ecommerce_project/features/home_screen/presentation/widges/products.dart';
import 'package:flutter/material.dart';

import '../widges/offer_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppTextConstants.appName),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 8,
            child: const OfferCardWidget(),
          ),
          const AllCategoriesList(),
          const SizedBox(height: 20),
          const Expanded(child: ProductsList()),
        ],
      ),
    );
  }
}