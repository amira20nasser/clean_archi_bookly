import 'dart:ui';

import 'package:flutter/widgets.dart';

import '../../constants.dart';

abstract class AppStyles {
  static textStyle18(BuildContext context) => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );
  static textStyle20(BuildContext context) => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.normal,
      );
  static textStyle30(BuildContext context) => const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w900,
        fontFamily: kGtSectraFine,
        letterSpacing: 1.2,
      );
  static textStyle14(BuildContext context) => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
      );

  static textStyle16(BuildContext context) => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
}
