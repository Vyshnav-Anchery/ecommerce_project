import 'package:ecommerce_project/core/utils/common%20widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../widgets/riview_field.dart';

class AddReveiwScreen extends StatelessWidget {
  const AddReveiwScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Review"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).padding.top),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              const Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: SizedBox(
                    height: 250,
                    width: 250,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.add_a_photo,
                          size: 150,
                        ),
                        Text("Add image")
                      ],
                    ),
                  )),
              const SizedBox(height: 30),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Rate this product",
                    style: TextStyle(fontSize: 20),
                  )),
              const SizedBox(height: 60),
              const SizedBox(height: 30),
              const ReviewField(),
              const SizedBox(height: 30),
              CustomElevatedButton(
                  text: "Submit review",
                  onPressed: () {},
                  color: Theme.of(context).primaryColor)
            ],
          ),
        ),
      ),
    );
  }
}
