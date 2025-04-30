import 'package:clean_archi_bookly/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import 'book_details_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: BookDetailsImage(
            image: book.image ?? "",
          ),
        ),
        const SizedBox(height: 43),
        Text(
          book.title,
          style: AppStyles.textStyle30(context),
        ),
        const SizedBox(height: 6),
        Text(
          book.authorName ?? "Not Provided",
          style: AppStyles.textStyle18(context).copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(height: 18),
        // const BookRating(),
      ],
    );
  }
}
