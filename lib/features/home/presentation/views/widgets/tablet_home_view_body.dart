import 'package:clean_archi_bookly/features/home/presentation/views/widgets/featured_books_list_view_bloc_builder.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import 'best_seller_list_view_item.dart';

class TabletHomeViewBody extends StatelessWidget {
  const TabletHomeViewBody({super.key});

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
                  "Best Seller",
                  style: AppStyles.textStyle18(context),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              childAspectRatio: 4, // Adjust this ratio to fit your item size
              crossAxisSpacing: 20, // Space between columns
              mainAxisSpacing: 20, // Space between rows
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: BestSellerListViewItem(),
                );
              },
              childCount: 2, // Number of items
            ),
          ),
        ],
      ),
    );
  }
}
