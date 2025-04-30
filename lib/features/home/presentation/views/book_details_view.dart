import 'package:clean_archi_bookly/features/home/domain/entities/book_entity.dart';
import 'package:clean_archi_bookly/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

import 'widgets/book_details_app_bar.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.book});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BookDetailsAppBar(),
      body: BookDetailsViewBody(
        book: book,
      ),
    );
  }
}
