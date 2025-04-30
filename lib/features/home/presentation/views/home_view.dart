import 'package:clean_archi_bookly/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:clean_archi_bookly/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/common_widgets/adaptive_layout_widget.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/mobile_home_view_body.dart';
import 'widgets/tablet_home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: AdaptiveLayoutWidget(
        tabletLayout: (context) {
          BlocProvider.of<FeaturedBooksCubit>(context).fetchFeaturedBooks();
          BlocProvider.of<NewestBooksCubit>(context).fetchNewestBooks();

          return const TabletHomeViewBody();
        },
        desktopLayout: (context) {
          BlocProvider.of<FeaturedBooksCubit>(context).fetchFeaturedBooks();
          BlocProvider.of<NewestBooksCubit>(context).fetchNewestBooks();

          return const TabletHomeViewBody();
        },
        mobileLayout: (context) {
          BlocProvider.of<FeaturedBooksCubit>(context).fetchFeaturedBooks();
          BlocProvider.of<NewestBooksCubit>(context).fetchNewestBooks();

          return const MobileHomeViewBody();
        },
      ),
    );
  }
}
