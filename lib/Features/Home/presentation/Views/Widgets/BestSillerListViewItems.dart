import 'package:bookly_2/Features/Home/presentation/Views/Widgets/customBookRate.dart';
import 'package:bookly_2/core/utils/app_routes.dart';
import 'package:bookly_2/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSillerListViewItems extends StatelessWidget {
  const BestSillerListViewItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.KbookDietilsView);
      },
      child: Container(
        height: 130,
        decoration: BoxDecoration(
          color: const Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/homeBook.png'
                        // BooklyAssets.TestImage2,
                        ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.6,
                    child: const Text(
                      'Harry Potter and the Goblet of Fie ',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      // style: booklyStlyes.textStyle22.copyWith(
                      //   fontWeight: FontWeight.w700,
                      // ),
                    ),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: AppStyle.textStyle14,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '19.99 €',
                          style: AppStyle.textStyle20.copyWith(
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        const customBookRate()
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
