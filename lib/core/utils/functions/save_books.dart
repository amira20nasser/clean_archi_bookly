import 'package:hive_flutter/hive_flutter.dart';
import '../../../features/home/domain/entities/book_entity.dart';

void saveBooksData(List<BookEntity> books, String boxName) {
  var box = Hive.box<BookEntity>(boxName);
  box.addAll(books);
}
