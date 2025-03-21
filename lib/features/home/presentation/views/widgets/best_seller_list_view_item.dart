import '../../../../../core/utils/app_router.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/app_styles.dart';
import 'book_rating.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 3 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                      "https://books.google.com/books/content?id=1sIzdipoXuQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(width: 25),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    child: Text(
                      "Harry Potter and the GolbetHarry Potter and the Golbet Harry Potter and the  Harry Potter and the Golbet Harry Potter and the Golbet ",
                      style: AppStyles.textStyle20(context).copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3),
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      "J.K Rowling",
                      style: AppStyles.textStyle14(context),
                    ),
                  ),
                  // const SizedBox(height: 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "19.99 \$",
                          style: AppStyles.textStyle20(context)
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      const BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
