import 'package:bookly_2/Features/Home/presentation/Views/Widgets/HomeAppBar.dart';
import 'package:bookly_2/Features/Home/presentation/Views/Widgets/HomeClip.dart';
import 'package:bookly_2/core/Widgets/CustomBottom.dart';
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
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 9,
                        offset:
                            const Offset(3, 6), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 160,
                        height: 190,
                        child: Image.asset(
                          'assets/images/homeBook.png',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'The Psychology of Money',
                              style: AppStyle.textStyle18
                                  .copyWith(color: const Color(0xff4D506C)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              'The psychology of money is the study of our behavior with money. Success with money isn\'t about knowledge, IQ or how good you are at math It\'s about behavior, and everyone is prone to certain behaviors over others.',
                              style: AppStyle.textStyle14.copyWith(
                                  fontSize: 11, color: const Color(0xff9091A0)),
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            CustomBottom(
                              onPressed: () {},
                              bottomTittle: 'Grab Now',
                              height: 30,
                              width: 90,
                              textStyle: const TextStyle(fontSize: 12),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
