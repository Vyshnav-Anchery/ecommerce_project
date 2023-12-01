import 'package:ecommerce_project/core/constants/app_constants.dart';
import 'package:ecommerce_project/features/home_screen/presentation/widgets/categories_list.dart';
import 'package:ecommerce_project/features/home_screen/presentation/widgets/products.dart';
import 'package:flutter/material.dart';
import '../widgets/offer_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppConstants.appName),
      ),
      body: LayoutBuilder(builder: (context, child) {
        return Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 8,
              child: const OfferCardWidget(),
            ),
            const SizedBox(height: 20),
            const AllCategoriesList(),
            const SizedBox(height: 20),
            const Expanded(child: ProductsList()),
          ],
        );
      }),
    );
  }
}
