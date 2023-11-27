import 'package:flutter/material.dart';

class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 300,
      child: const Card(
          elevation: 3,
          child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(radius: 25),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("User name"),
                    Row(
                      children: [
                        Icon(Icons.star, size: 15),
                        Icon(Icons.star, size: 15),
                        Icon(Icons.star, size: 15),
                        Icon(Icons.star, size: 15),
                        Icon(Icons.star_border_outlined, size: 20),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
                "data data data data data data data data data data data data data data data data vvv"),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(
                  height: 90,
                  width: 80,
                  child: Card(
                    child: Icon(Icons.camera),
                  ),
                ),
                SizedBox(
                  height: 90,
                  width: 80,
                  child: Card(
                    child: Icon(Icons.camera),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
