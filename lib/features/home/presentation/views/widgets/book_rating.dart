import 'package:clean_archi_bookly/features/home/domain/entities/book_entity.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/app_styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.book});
  final BookEntity book;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
          size: 15,
        ),
        const SizedBox(width: 7),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            book.rating.toString() ,
            style: AppStyles.textStyle16(context),
          ),
        ),
        const SizedBox(width: 5),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "(${((book.rating ?? 0 / 6) * 100) })",
            style: AppStyles.textStyle14(context).copyWith(
              color: const Color(0xff707070),
            ),
          ),
        ),
      ],
    );
  }
}
