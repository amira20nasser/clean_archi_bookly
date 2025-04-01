import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/functions/custom_error_widget.dart';
import '../../../../../core/utils/functions/custom_loading_indicator.dart';
import '../../manager/newest_books_cubit/newest_books_cubit.dart';
import 'best_seller_list_view_item.dart';

class NewestBooksGridViewBlocBuilder extends StatelessWidget {
  const NewestBooksGridViewBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              childAspectRatio: 4, // Adjust this ratio to fit your item size
              crossAxisSpacing: 20, // Space between columns
              mainAxisSpacing: 20, // Space between rows
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: NewestListViewItem(
                    book: state.books[index],
                  ),
                );
              },
              childCount: state.books.length, // Number of items
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
              child: CustomErrorWidget(errMessage: state.errMsg));
        } else {
          return const SliverToBoxAdapter(
            child: CustomLoadingIndicator(),
          );
        }
      },
    );
  }
}
