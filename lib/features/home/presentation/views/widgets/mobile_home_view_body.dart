import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import 'featured_books_list_view_bloc_builder.dart';
import 'newest_list_view_bloc_builder.dart';

class MobileHomeViewBody extends StatelessWidget {
  const MobileHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // list expand not spcific height
                const FeaturedBooksListViewBlocBuilder(),
                const SizedBox(height: 50),
                Text(
                  "Newest Books",
                  style: AppStyles.textStyle18(context),
                ),
                const SizedBox(height: 20),
                NewestListViewBlocBuilder()
              ],
            ),
          ),
          // const SliverFillRemaining(
          //   child: Padding(
          //     padding: EdgeInsets.only(right: 16.0),
          //     child: NewestListViewBlocBuilder(),
          //   ),
          // ),
        ],
      ),
    );
  }
}
