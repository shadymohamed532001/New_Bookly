
import 'package:bookly_2/Features/Home/presentation/Views/Widgets/best_siller_list_view_items.dart';
import 'package:flutter/material.dart';

class BestSillerListView extends StatelessWidget {
  const BestSillerListView({
    super.key,
  });
  // final List<BookEntite> Books;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: BestSillerListViewItems(),
        );
      },
    );
  }
}
