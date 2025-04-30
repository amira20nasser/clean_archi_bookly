import 'package:clean_archi_bookly/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'book_details_action.dart';
import 'book_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BookDetailsSection(
                  book: book,
                ),
                const SizedBox(height: 50),
                const BookDetailsAction(),
                const Expanded(child: SizedBox(height: 37)),
                const SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
