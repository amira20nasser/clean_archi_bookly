import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../../../core/utils/app_styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
          size: 10,
        ),
        const SizedBox(width: 7),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "4.8",
            style: AppStyles.textStyle16(context),
          ),
        ),
        const SizedBox(width: 5),
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "(245)",
            style: AppStyles.textStyle14(context),
          ),
        ),
      ],
    );
  }
}
