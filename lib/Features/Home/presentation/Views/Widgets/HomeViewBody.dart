import 'package:bookly_2/Features/Home/presentation/Views/Widgets/CustomItemspresentiation.dart';
import 'package:bookly_2/Features/Home/presentation/Views/Widgets/HomeAppBar.dart';
import 'package:bookly_2/Features/Home/presentation/Views/Widgets/HomeClip.dart';
import 'package:bookly_2/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const CustomFeaturedListView()
            ],
          ),
        ),
      ],
    );
  }
}

class CustomFeaturedListView extends StatelessWidget {
  const CustomFeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomFeaturedListViewBody();
  }
}

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
            padding: EdgeInsets.only(left: 16),
            child: CustomListViewItems(),
          );
        },
      ),
    );
  }
}

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 2,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(500),
            image: const DecorationImage(
                image: AssetImage('assets/images/listViewphoto.png'),
                fit: BoxFit.cover)),
      ),
    );
  }
}
