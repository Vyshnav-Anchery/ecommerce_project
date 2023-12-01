import 'package:flutter/material.dart';
import '../../../product_details/presentation/pages/product_details.dart';

class WishlistDetails extends StatelessWidget {
  const WishlistDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wishlist name"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: MediaQuery.sizeOf(context).width / 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: .7,
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => const ProductDetails(),
              //     ));
            },
            child: Card(
              color: Colors.blue,
              child: Center(
                child: Text('$index'),
              ),
            ),
          );
        },
      ),
    );
  }
}
