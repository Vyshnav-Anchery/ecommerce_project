import 'package:ecommerce_project/features/product_details/presentation/pages/product_details.dart';
import 'package:flutter/material.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // ignore: prefer_const_constructors
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent:
            MediaQuery.sizeOf(context).width / 2, // Number of items per row
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,
        childAspectRatio: .7, // Aspect ratio of each item
      ),
      itemCount: 10, // Total number of items
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductDetails(),
                ));
          },
          child: Card(
            color: Colors.blue,
            child: Center(
              child: Text('$index'),
            ),
          ),
        );
      },
    );
  }
}
