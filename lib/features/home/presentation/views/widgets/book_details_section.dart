import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import 'book_details_image.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Center(child: BookDetailsImage()),
        const SizedBox(height: 43),
        Text(
          "The Jungle Book",
          style: AppStyles.textStyle30(context),
        ),
        const SizedBox(height: 6),
        Text(
          "Rudyard Kipling",
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
