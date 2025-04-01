import 'package:clean_archi_bookly/features/home/data/data_sources/home_local_data_source.dart';
import 'package:clean_archi_bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/errors/failure.dart';
import '../../domain/entities/book_entity.dart';
import '../../domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;
  HomeRepoImpl({
    required this.homeRemoteDataSource,
    required this.homeLocalDataSource,
  });

  @override
  Future<Either<Failure, List<BookEntity>>> fetchFeaturedBooks(
      {int pageNumber = 0}) async {
    try {
      // log("Trigger");
      List<BookEntity> books =
          homeLocalDataSource.fetchFeaturedBooks(pageNumber: pageNumber);
      if (books.isEmpty) {
        books = await homeRemoteDataSource.fetchFeaturedBooks(
          pageNumber: pageNumber,
        );
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDiorError(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> fetchNewestBooks() async {
    try {
      var books = homeLocalDataSource.fetchNewestBooks();
      if (books.isEmpty) {
        books = await homeRemoteDataSource.fetchNewestBooks();
      }
      return right(books);
    } on DioException catch (e) {
      return left(ServerFailure.fromDiorError(e));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
