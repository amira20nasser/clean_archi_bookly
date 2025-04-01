import 'package:clean_archi_bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:clean_archi_bookly/features/home/presentation/views/widgets/featured_books_list_view_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_styles.dart';
import 'newest_books_grid_view_bloc_builder.dart';

class TabletHomeViewBody extends StatelessWidget {
  const TabletHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // list expand not spcific height
                    const FeaturedBooksListViewBlocBuilder(),
                    const SizedBox(height: 50),
                    Text(
                      "Best Seller",
                      style: AppStyles.textStyle18(context),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
              const NewestBooksGridViewBlocBuilder(),
            ],
          );
        },
      ),
    );
  }
}
