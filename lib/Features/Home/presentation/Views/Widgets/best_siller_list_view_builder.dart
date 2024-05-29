import 'package:bookly_2/Features/Home/presentation/Views/Widgets/best_siller_list_view.dart';
import 'package:flutter/material.dart';

class BestSillerListViewBuilder extends StatelessWidget {
  const BestSillerListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const BestSillerListView();
    // return BlocBuilder<NewsBooksCubit, NewsBooksState>(
    //   builder: (context, state) {
    //     if (state is NewsBooksFailuers) {
    //       return Text(state.error);
    //     } else if (state is NewsBooksSucess) {
    //       return BestSillerListView(
    //         Books: state.NewsBooks,
    //       );
    //     } else {
    //       return const CircularProgressIndicator();
    //     }
    //   },
    // );
  }
}
