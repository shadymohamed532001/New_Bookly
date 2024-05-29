import 'package:bookly_2/Features/Home/presentation/Views/Widgets/best_siller_list_view.dart';
import 'package:bookly_2/Features/Home/presentation/Views/Widgets/FeaturedListView.dart';
import 'package:bookly_2/Features/Home/presentation/Views/Widgets/CustomItemspresentiation.dart';
import 'package:bookly_2/Features/Home/presentation/Views/Widgets/HomeAppBar.dart';
import 'package:bookly_2/Features/Home/presentation/Views/Widgets/HomeClip.dart';
import 'package:bookly_2/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Stack(
            children: [
              const HomeClip(),
              SafeArea(
                child: Column(
                  children: [
                    const HomeAppBar(),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomItemspresentiation(),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Recommanded for you',
                            style: AppStyle.textStyle20
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const CustomFeaturedListView(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Popular books',
                            style: AppStyle.textStyle20
                                .copyWith(fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    const BestSillerListView()
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
