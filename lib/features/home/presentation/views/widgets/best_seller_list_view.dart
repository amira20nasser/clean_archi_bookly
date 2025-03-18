import 'package:flutter/widgets.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      separatorBuilder: (context, index) => const SizedBox(height: 20),
      itemBuilder: (context, index) => const BestSellerListViewItem(),
    );
  }
}
