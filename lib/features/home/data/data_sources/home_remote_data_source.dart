import 'package:clean_archi_bookly/constants.dart';
import '../../../../core/utils/api_service.dart';
import '../../../../core/utils/functions/save_books.dart';
import '../../domain/entities/book_entity.dart';
import '../models/book_model/book_model.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> fetchFeaturedBooks();
  Future<List<BookEntity>> fetchNewestBooks();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<List<BookEntity>> fetchFeaturedBooks() async {
    var data = await apiService.get(
        endPoint: "volumes?Filtering=free-ebook&q=programming");
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books,kFeaturedBox);
    return books;
  }

  List<BookEntity> getBooksList(Map<String, dynamic> data) {
    List<BookEntity> books = [];
    for (var bookMap in data["items"]) {
      books.add(BookModel.fromJson(bookMap));
    }
    return books;
  }

  @override
  Future<List<BookEntity>> fetchNewestBooks() async {
    var data = await apiService.get(
        endPoint: "volumes?Filtering=free-ebook&Sorting=newest&q=programming");
    List<BookEntity> books = getBooksList(data);
    saveBooksData(books, kNewestBox);

    return books;
  }
}
