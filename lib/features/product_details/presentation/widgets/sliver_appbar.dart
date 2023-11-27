import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';

class SlIverAppbarWidget extends StatelessWidget {
  const SlIverAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      floating: false,
      centerTitle: true,
      leading:
          // const CircleAvatar(
          //     radius: 10, child: Icon(Icons.arrow_back_ios_new_rounded)
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.black,
              )),
      // ),
      title: Text(AppConstants.details,
          style: const TextStyle(fontSize: 25, color: Colors.black)),
      actions: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite,
              size: 30,
              color: Colors.black,
            )),
      ],
    );
  }
}
