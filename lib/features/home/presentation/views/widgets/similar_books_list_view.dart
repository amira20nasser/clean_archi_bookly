import 'package:flutter/material.dart';

import 'featured_books_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.15,
      child: ListView.separated(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) => const FeaturedBooksListViewItem(
          image: "",
        ),
      ),
    );
  }
}
