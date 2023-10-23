import 'package:bookly_2/Features/Home/presentation/Views/Widgets/HomeAppBar.dart';
import 'package:bookly_2/Features/Home/presentation/Views/Widgets/HomeClip.dart';
import 'package:bookly_2/core/utils/CliperShape.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        HomeClip(),
        SafeArea(
          child: Column(
            children: [
              HomeAppBar(),
            ],
          ),
        ),
      ],
    );
  }
}
