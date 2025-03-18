import 'dart:ui';

import 'package:flutter/widgets.dart';

import '../../constants.dart';

abstract class AppStyles {
  static TextStyle textStyle18(BuildContext context) => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );
  static TextStyle textStyle20(BuildContext context) => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.normal,
      );
  static TextStyle textStyle30(BuildContext context) => const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
        fontFamily: kGtSectraFine,
        letterSpacing: 1.2,
      );
  static TextStyle textStyle14(BuildContext context) => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      );

  static TextStyle textStyle16(BuildContext context) => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
}
