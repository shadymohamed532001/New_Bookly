import 'package:bookly_2/Features/Home/presentation/Views/Widgets/CustomListViewItems.dart';

import 'package:flutter/material.dart';

class CustomFeaturedListViewBody extends StatelessWidget {
  const CustomFeaturedListViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: double.infinity,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.only(
              left: 16,
            ),
            child: CustomListViewItems(),
          );
        },
      ),
    );
  }
}
