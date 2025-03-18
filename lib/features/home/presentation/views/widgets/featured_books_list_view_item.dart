import 'package:flutter/material.dart';

class FeaturedBooksListViewItem extends StatelessWidget {
  const FeaturedBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.25,
      child: AspectRatio(
        aspectRatio: 5 / 8,
        child: Container(
          // width: MediaQuery.sizeOf(context).height * 0.15,
          // height: MediaQuery.sizeOf(context).height * 0.25,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                "https://books.google.com/books/content?id=4o4qEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
