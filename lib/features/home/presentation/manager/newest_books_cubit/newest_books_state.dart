part of 'newest_books_cubit.dart';

@immutable
abstract class NewestBooksState {}

class NewestBooksInitial extends NewestBooksState {}

class NewestBooksLoading extends NewestBooksState {}
class NewestBooksPaginationLoading extends NewestBooksState {}

class NewestBooksSuccess extends NewestBooksState {
  final List<BookEntity> books;

  NewestBooksSuccess(this.books);
}

class NewestBooksFailure extends NewestBooksState {
  final String errMsg;

  NewestBooksFailure(this.errMsg);
}

class NewestBooksPaginationFailure extends NewestBooksState {
  final String errMsg;

  NewestBooksPaginationFailure(this.errMsg);
}
