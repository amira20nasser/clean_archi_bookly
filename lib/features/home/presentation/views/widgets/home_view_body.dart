import 'package:clean_archi_bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // expand not spcific height
          const FeaturedBooksListView(),
          const SizedBox(height: 50),
          Text(
            "Best Seller",
            style: AppStyles.textStyle18(context),
          ),
        ],
      ),
    );
  }
}
