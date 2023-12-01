import 'package:flutter/material.dart';

class ProductImageCard extends StatelessWidget {
  const ProductImageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        // padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        height: MediaQuery.sizeOf(context).height / 2,
        width: MediaQuery.sizeOf(context).width,
        child: Card(
          color: Theme.of(context).primaryColor,
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("data"),
              SizedBox(
                width: MediaQuery.sizeOf(context).width,
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                        height: 100,
                        width: 90,
                        child: Card(
                          child: Center(child: Text("image")),
                        ));
                  },
                ),
              ),
            ],
          )),
        ));
  }
}
