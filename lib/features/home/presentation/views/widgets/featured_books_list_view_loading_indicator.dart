import 'package:flutter/material.dart';
import '../../../../../core/common_widgets/custom_fading_widget.dart';
import 'featured_books_list_view_item_loading_indicator.dart';

class FeaturedBooksListViewLoadingIndicator extends StatelessWidget {
  const FeaturedBooksListViewLoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadingWidget(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height * 0.25,
        child: ListView.separated(
          itemCount: 15,
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => const SizedBox(width: 8),
          itemBuilder: (context, index) =>
              const FeaturedBooksListViewItemLoadingIndicator(),
        ),
      ),
    );
  }
}
