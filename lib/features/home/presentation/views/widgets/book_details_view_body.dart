import 'package:flutter/material.dart';
import 'book_details_action.dart';
import 'book_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BookDetailsSection(),
                SizedBox(height: 50),
                BookDetailsAction(),
                Expanded(child: SizedBox(height: 37)),
                SimilarBooksSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
