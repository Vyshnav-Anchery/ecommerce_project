import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      child: const Column(children: [
        SizedBox(height: 20),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text(
            "Plant Name",
            style: TextStyle(fontSize: 20),
          ),
          Text(
            r'100 $',
            style: TextStyle(fontSize: 20),
          ),
        ]),
        Row(
          children: [
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star),
            Icon(Icons.star_border_outlined),
            SizedBox(width: 10),
            Text(
              "(213 ratings)",
              style: TextStyle(fontSize: 12),
            )
          ],
        ),
        SizedBox(height: 20),
        Text("data data data data data data data data data data data data "),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Text("Category"),
                SizedBox(height: 5),
                Text("Category name"),
              ],
            ),
            Column(
              children: [
                Text("Plant"),
                SizedBox(height: 5),
                Text("Plant name"),
              ],
            ),
            Column(
              children: [
                Text("Size"),
                SizedBox(height: 5),
                Text('2"9'),
              ],
            ),
            Column(
              children: [
                Text("Humidity"),
                SizedBox(height: 5),
                Text("92%"),
              ],
            ),
          ],
        ),
      ]),
    );
  }
}
