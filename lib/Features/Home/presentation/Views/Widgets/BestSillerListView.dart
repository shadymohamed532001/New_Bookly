import 'package:bookly_2/Features/Home/presentation/Views/Widgets/BestSillerListViewItems.dart';
import 'package:flutter/material.dart';

class BestSillerListView extends StatelessWidget {
  const BestSillerListView({
    super.key,
  });
  // final List<BookEntite> Books;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: BestSillerListViewItems(),
        );
      },
    );
  }
}
