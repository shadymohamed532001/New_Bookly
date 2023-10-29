import 'package:bookly_2/Features/Home/presentation/Views/Widgets/BookDetailsListViewBuilder.dart';
import 'package:bookly_2/Features/Home/presentation/Views/Widgets/CustomBookDetailsActon.dart';
import 'package:bookly_2/Features/Home/presentation/Views/Widgets/customBookRate.dart';
import 'package:bookly_2/core/utils/MyTheme.dart';
import 'package:bookly_2/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatefulWidget {
  const BookDetailsViewBody({super.key});

  @override
  State<BookDetailsViewBody> createState() => _BookDetailsViewBodyState();
}

class _BookDetailsViewBodyState extends State<BookDetailsViewBody> {
  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                child: Stack(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: Height * 0.04),
                        width: Width,
                        height: Height * .3,
                        decoration: BoxDecoration(
                          color: MyTheme.blackColor,
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(30),
                            bottomRight: Radius.circular(
                              30,
                            ),
                          ),
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              height: Width * .5,
                              width: Width * .35,
                              child: Image.asset('assets/images/homeBook.png'),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'The Psychology of Money',
                                      style: AppStyle.textStyle16.copyWith(
                                        color: MyTheme.whiteColor,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 13,
                                    ),
                                    Text(
                                      'The psychology of money is the study of our behavior with money. Success with money isn\'t about knowledge, IQ or how good you are at math. It\'s about behavior, and everyone is prone to certain behaviors over others.',
                                      style: AppStyle.textStyle14.copyWith(
                                        color: MyTheme.greyColor,
                                        fontSize: 11,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    const customBookRate(),
                                  ],
                                ),
                              ),
                            )
                          ],
                        )),
                    Positioned(
                      top: Width * .58,
                      left: Width * .1,
                      child: Container(
                        height: Width / 4.4,
                        width: Width / 1.25,
                        decoration: BoxDecoration(
                            color: MyTheme.whiteColor,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            CircleAvatar(
                              radius: 35,
                              child: Image.asset('assets/images/AuthIcon.jpeg'),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Author',
                                  style: AppStyle.textStyle14.copyWith(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                    color: MyTheme.greyColor,
                                  ),
                                ),
                                Text(
                                  'Morgan Housel',
                                  style: AppStyle.textStyle18.copyWith(
                                    color: MyTheme.blackColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  'Best Seller of New York Times',
                                  style: AppStyle.textStyle14.copyWith(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w300,
                                    color: MyTheme.greyColor,
                                  ),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.star,
                              color: Color(0xffC4C4C4),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  'About The Book',
                  style: AppStyle.textStyle20.copyWith(
                    color: MyTheme.blackColor,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(24),
                child: Text(
                  'The Psychology of Money\' is an essential read for anyone interested in being better with money. Fast-paced and engaging, this book will help you refine your thoughts towards money. You can finish this book in a week, unlike other books that are too lengthy. The most important emotions in relation to money are fear, guilt, shame and envy. It\'s worth spending some effort to become aware of the emotions that are especially tied to money for you because, without awareness, they will tend to override rational thinking and drive your actions.',
                  style: AppStyle.textStyle14.copyWith(
                    fontFamily: 'SpaceGrotesk',
                    fontWeight: FontWeight.w400,
                    color: MyTheme.greyColor,
                  ),
                ),
              ),
              const BookDetailsListViewBuilder(),
              const CustomDetailsBookActions(),
            ],
          ),
        ),
      ],
    );
  }
}
