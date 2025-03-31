import 'package:flutter/material.dart';

import '../../../domain/entities/book_entity.dart';
import 'featured_books_list_view_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key, required this.books});
  final List<BookEntity> books;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.25,
      child: ListView.separated(
        itemCount: books.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        itemBuilder: (context, index) => FeaturedBooksListViewItem(
          image: books[index].image ?? '',
        ),
      ),
    );
  }
}
