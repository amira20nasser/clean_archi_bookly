import 'package:flutter/material.dart';

import '../../../../../core/common_widgets/custom_button.dart';

class BookDetailsAction extends StatelessWidget {
  const BookDetailsAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: CustomButton(
            text: "Free Price",
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: CustomButton(
            text: "Free Preview",
            backgroundColor: const Color(0xffef8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
