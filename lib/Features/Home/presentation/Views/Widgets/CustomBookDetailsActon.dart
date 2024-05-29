import 'package:bookly_2/core/Widgets/custom_bottom.dart';
import 'package:bookly_2/core/utils/my_theme.dart';
import 'package:flutter/material.dart';

class CustomDetailsBookActions extends StatelessWidget {
  const CustomDetailsBookActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Expanded(
            child: CustomBottom(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
              text: '19.99€',
              onPressed: () {},
              textcolor: MyTheme.blackColor,
              backgroundColor: MyTheme.whiteColor,
            ),
          ),
          Expanded(
            child: CustomBottom(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
              text: 'Free preview',
              onPressed: () {},
              textcolor: MyTheme.whiteColor,
              backgroundColor: MyTheme.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
