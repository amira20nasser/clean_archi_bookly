import 'package:flutter/material.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        // expand not spcific height
        Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: FeaturedBooksListView(),
        ),
      ],
    );
  }
}
