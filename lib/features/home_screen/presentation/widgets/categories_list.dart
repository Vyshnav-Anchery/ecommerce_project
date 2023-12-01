import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_bloc.dart';

class AllCategoriesList extends StatelessWidget {
  const AllCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    HomeBloc homeBloc = HomeBloc();
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeCategoryChangedActionState) {
          homeBloc.add(HomeInitialEvent());
        }
      },
      builder: (context, state) {
        return SizedBox(
          width: MediaQuery.sizeOf(context).width / 1.09,
          height: MediaQuery.sizeOf(context).height / 20,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () =>
                    homeBloc.add(HomeCategoryClickedEvent(selected: index)),
                child: Container(
                    decoration: BoxDecoration(
                      color: index == homeBloc.selectedIndex
                          ? Theme.of(context).primaryColor.withOpacity(0.1)
                          : Theme.of(context).scaffoldBackgroundColor,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                          color: index == homeBloc.selectedIndex
                              ? Theme.of(context).primaryColor
                              : Colors.grey.shade300,
                          width: 2),
                    ),
                    padding: const EdgeInsets.all(10),
                    child: const Center(child: Text("data"))),
              );
            },
          ),
        );
      },
    );
  }
}
