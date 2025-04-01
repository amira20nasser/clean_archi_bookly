import 'package:flutter/material.dart';

class FeaturedBooksListViewItemLoadingIndicator extends StatelessWidget {
  const FeaturedBooksListViewItemLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.25,
      child: AspectRatio(
        aspectRatio: 5 / 8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
