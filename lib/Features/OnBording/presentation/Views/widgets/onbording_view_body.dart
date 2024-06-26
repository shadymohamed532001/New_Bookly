import 'package:bookly_2/Features/OnBording/presentation/Views/widgets/custom_onBord_bottom.dart';
import 'package:bookly_2/Features/OnBording/presentation/Views/widgets/custom_skiper.dart';
import 'package:bookly_2/Features/OnBording/presentation/Views/widgets/list_of_onbording_continte.dart';
import 'package:bookly_2/core/utils/app_routes.dart';
import 'package:bookly_2/core/utils/my_theme.dart';
import 'package:bookly_2/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBordingViewBody extends StatefulWidget {
  const OnBordingViewBody({super.key});

  @override
  State<OnBordingViewBody> createState() => _OnBordingViewBodyState();
}

class _OnBordingViewBodyState extends State<OnBordingViewBody> {
  late PageController pageController;
  int currnetIndex = 0;
  @override
  void initState() {
    pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: pageController,
            onPageChanged: (value) {
              setState(() {
                currnetIndex = value;
              });
            },
            itemCount: continte.length,
            itemBuilder: (context, index) {
              return SafeArea(
                child: Column(
                  children: [
                    CustomSkiper(
                      onTap: () {
                        GoRouter.of(context)
                            .pushReplacement(AppRouter.KhomeView);
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 50, right: 50, top: 30, bottom: 20),
                      child: Image.asset(
                        continte[index].imagepath,
                        width: MediaQuery.of(context).size.width / 1,
                        height: MediaQuery.of(context).size.height / 2,
                      ),
                    ),
                    Text(
                      continte[index].tittle,
                      style: AppStyle.textStyle20.copyWith(
                        fontWeight: FontWeight.w800,
                        fontFamily: 'NanumGothic',
                        color: MyTheme.blackColor,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          continte[index].subtittle,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.spaceGrotesk(
                            color: MyTheme.blackColor,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
              3,
              (index) => Container(
                    height: 7,
                    width: currnetIndex == index ? 30 : 10,
                    margin: const EdgeInsets.only(right: 5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: MyTheme.primaryColor,
                    ),
                  )),
        ),
        CustomOnBordBottom(
          currnetIndex: currnetIndex,
          pageController: pageController,
        )
      ],
    );
  }
}
