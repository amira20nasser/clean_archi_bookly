import 'package:flutter/material.dart';
import '../app_styles.dart';

void showSnackBar(
  BuildContext context, {
  required String text,
  required Color backgroundColor,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(
        text,
        style: AppStyles.textStyle14(context),
      ),
      backgroundColor: backgroundColor,
      behavior: SnackBarBehavior.floating,
    ),
  );
}
