import 'package:bookly_2/Features/Home/presentation/Views/Widgets/customBookRate.dart';
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
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .3,
          decoration: const BoxDecoration(
            color: Color(
              0xff171B36,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(
                30,
              ),
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * .15,
              ),
              Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.width * .5,
                    width: MediaQuery.of(context).size.width * .35,
                    child: Image.asset('assets/images/homeBook.png'),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'The Psychology of Money',
                            style: AppStyle.textStyle16
                                .copyWith(color: Colors.white),
                          ),
                          const SizedBox(
                            height: 13,
                          ),
                          Text(
                            'The psychology of money is the study of our behavior with money. Success with money isn\'t about knowledge, IQ or how good you are at math. It\'s about behavior, and everyone is prone to certain behaviors over others.',
                            style: AppStyle.textStyle14.copyWith(
                              color: const Color(0xffDDDDE2),
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
              )
            ],
          ),
        ),
        Text('sssss'),

        // Positioned(
        //     top: MediaQ,
        //     left: MediaQuery.of(context).size.width * .3,
        //     child: Container(
        //       height: 55,
        //       width: double.infinity,
        //       decoration: BoxDecoration(color: Colors.white30),
        //     ))
      ],
    );
  }
}
