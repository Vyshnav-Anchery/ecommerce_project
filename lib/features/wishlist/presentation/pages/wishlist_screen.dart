import 'package:ecommerce_project/features/wishlist%20details/presentation/pages/wishlist_details.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Wishlist"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10);
          },
          itemCount: 4,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WishlistDetails(),
                      ));
                },
                title: Text(index.toString()),
                subtitle: const Text("10 items"),
              ),
            );
          },
        ),
      ),
    );
  }
}
