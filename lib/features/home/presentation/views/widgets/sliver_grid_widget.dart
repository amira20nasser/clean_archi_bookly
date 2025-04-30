import 'package:flutter/material.dart';

import '../../../domain/entities/book_entity.dart';
import 'best_seller_list_view_item.dart';

class SliverGridWidget extends StatelessWidget {
  const SliverGridWidget({
    super.key,
    required this.books,
  });

  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 4,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: NewestListViewItem(
              book: books[index],
            ),
          );
        },
        childCount: books.length,
      ),
    );
  }
}
