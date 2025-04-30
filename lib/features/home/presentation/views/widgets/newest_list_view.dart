import 'package:flutter/widgets.dart';

import '../../../domain/entities/book_entity.dart';
import 'best_seller_list_view_item.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key, required this.books});
  final List<BookEntity> books;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: books.length,
      padding: EdgeInsets.zero,
      separatorBuilder: (context, index) => const SizedBox(height: 16),
      itemBuilder: (context, index) => NewestListViewItem(
        book: books[index],
      ),
    );
  }
}
