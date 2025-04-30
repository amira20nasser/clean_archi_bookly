import 'package:clean_archi_bookly/constants.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../domain/entities/book_entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0});
  List<BookEntity> fetchNewestBooks();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntity> fetchFeaturedBooks({int pageNumber = 0}) {
    var startIndex = pageNumber * 10;
    var endIndex = (pageNumber + 1) * 10;
    var box = Hive.box<BookEntity>(kFeaturedBox);
    var length = box.values.length;
    if (startIndex > length) {
      if (endIndex > length) {
        endIndex = length - 1;
      }
      return box.values.toList().sublist(startIndex, endIndex);
    }
    return [];
  }

  @override
  List<BookEntity> fetchNewestBooks({int pageNumber = 0}) {
    var startIndex = pageNumber * 10;
    var endIndex = (pageNumber + 1) * 10;

    var box = Hive.box<BookEntity>(kNewestBox);
    var length = box.values.length;
    if (startIndex > length) {
      if (endIndex > length) {
        endIndex = length - 1;
      }
      return box.values.toList().sublist(startIndex, endIndex);
    }
    return [];
  }
}
