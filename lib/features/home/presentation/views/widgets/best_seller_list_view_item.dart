import 'package:flutter/widgets.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_styles.dart';
import 'book_rating.dart';


class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 5 / 8,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    // "https://books.google.com/books/content?id=4o4qEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
                    "https://books.google.com/books/content?id=1sIzdipoXuQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 30),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.5,
                  child: Text(
                    "Harry Potter and the Golbet of Fire",
                    style: AppStyles.textStyle20(context)
                        .copyWith(fontFamily: kGtSectraFine),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 3),
                Text(
                  "J.K Rowling",
                  style: AppStyles.textStyle14(context),
                ),
                const SizedBox(height: 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "19.99 \$",
                      style: AppStyles.textStyle20(context)
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const BookRating(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
