import 'package:bookly_2/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomSkiper extends StatelessWidget {
  const CustomSkiper({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          right: 40,
          left: 40,
          top: 20,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'Skip',
              textAlign: TextAlign.end,
              style: AppStyle.textStyle20.copyWith(fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}
