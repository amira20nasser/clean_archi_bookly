import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/functions/custom_error_widget.dart';
import '../../../../../core/utils/functions/custom_loading_indicator.dart';
import '../../../../../core/utils/functions/show_snack_bar.dart';
import '../../../domain/entities/book_entity.dart';
import '../../manager/newest_books_cubit/newest_books_cubit.dart';
import 'sliver_grid_widget.dart';

class NewestBooksGridViewBlocBuilder extends StatefulWidget {
  const NewestBooksGridViewBlocBuilder({super.key});

  @override
  State<NewestBooksGridViewBlocBuilder> createState() =>
      _NewestBooksGridViewBlocBuilderState();
}

class _NewestBooksGridViewBlocBuilderState
    extends State<NewestBooksGridViewBlocBuilder> {
  final List<BookEntity> books = [];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewestBooksCubit, NewestBooksState>(
      listener: (context, state) {
        if (state is NewestBooksSuccess) {
          books.addAll(state.books);
        }
        if (state is NewestBooksPaginationFailure) {
          showSnackBar(
            context,
            text: state.errMsg,
            backgroundColor: Colors.white,
          );
        }
      },
      builder: (context, state) {
        if (state is NewestBooksSuccess ||
            state is NewestBooksPaginationFailure ||
            state is NewestBooksPaginationLoading) {
          return SliverGridWidget(
            books: books,
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

