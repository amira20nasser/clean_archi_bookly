import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListViewItem extends StatelessWidget {
  const FeaturedBooksListViewItem({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.25,
      child: AspectRatio(
        aspectRatio: 5 / 8,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: image,
          ),
        ),
        // Container(
        //   // width: MediaQuery.sizeOf(context).height * 0.15,
        //   // height: MediaQuery.sizeOf(context).height * 0.25,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(16),
        //     image: const DecorationImage(
        //       fit: BoxFit.fill,
        //       image: NetworkImage(
        //         // "https://books.google.com/books/content?id=4o4qEAAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
        //         "https://books.google.com/books/content?id=1sIzdipoXuQC&printsec=frontcover&img=1&zoom=1&edge=curl&source=gbs_api",
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
