import 'package:flutter/material.dart';

import '../app_styles.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: AppStyles.textStyle18(context),
        textAlign: TextAlign.center,
      ),
    );
  }
}
