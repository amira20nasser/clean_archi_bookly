import 'package:clean_archi_bookly/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/material.dart';

import 'widgets/book_details_app_bar.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: BookDetailsAppBar(),
      body:  BookDetailsViewBody(),
    );
  }
}
