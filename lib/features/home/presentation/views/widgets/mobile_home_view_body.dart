import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../manager/newest_books_cubit/newest_books_cubit.dart';
import 'featured_books_list_view_bloc_builder.dart';
import 'newest_list_view_bloc_builder.dart';

class MobileHomeViewBody extends StatefulWidget {
  const MobileHomeViewBody({super.key});

  @override
  State<MobileHomeViewBody> createState() => _MobileHomeViewBodyState();
}

class _MobileHomeViewBodyState extends State<MobileHomeViewBody> {
  late final ScrollController _scrollController;
  int nextPage = 1;
  var loading = false;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  void _scrollListener() async {
    var currentPosition = _scrollController.position.pixels;
    var maxScrollLength = _scrollController.position.maxScrollExtent;
    if (currentPosition >= 0.7 * maxScrollLength) {
      if (!loading) {
        loading = true;
        await BlocProvider.of<NewestBooksCubit>(context)
            .fetchNewestBooks(pageNumber: nextPage);
        nextPage++;
        loading = false;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // list expand not spcific height
                const FeaturedBooksListViewBlocBuilder(),
                const SizedBox(height: 50),
                Text(
                  "Newest Books",
                  style: AppStyles.textStyle18(context),
                ),
                const SizedBox(height: 20),
                const NewestListViewBlocBuilder()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
