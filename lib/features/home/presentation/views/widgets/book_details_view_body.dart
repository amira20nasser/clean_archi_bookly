import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import 'book_details_action.dart';
import 'book_details_image.dart';
import 'book_rating.dart';
import 'similar_books_list_view.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

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
                const BookRating(),
                const SizedBox(height: 50),
                const BookDetailsAction(),
                const Expanded(child: SizedBox(height: 37)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You Can also Like",
                    style: AppStyles.textStyle14(context).copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const SimilarBooksListView(),
                const SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
