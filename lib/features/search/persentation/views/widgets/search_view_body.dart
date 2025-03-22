import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import '../../../../home/presentation/views/widgets/search_result_list_view.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomSearchTextField(),
          const SizedBox(height: 16),
          Text(
            'Search Result',
            style: AppStyles.textStyle18(context),
          ),
          const SizedBox(height: 16),
          const Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
