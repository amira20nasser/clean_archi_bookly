
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/widgets.dart';
import '../../../domain/entities/book_entity.dart';
import '../../../domain/usecases/fetch_featured_books_use_case.dart';

part 'featured_books_state.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this.fetchFeaturedBooksUseCase)
      : super(FeaturedBooksInitial());
  final FetchFeaturedBooksUseCase fetchFeaturedBooksUseCase;

  Future<void> fetchFeaturedBooks({int pageNumber = 0}) async {
    // log("trigger");
    emit(FeaturedBooksLoading());
    var result = await fetchFeaturedBooksUseCase.execute(pageNumber);
    result.fold(
      (failure) {
        emit(FeaturedBooksFailure(failure.message));
      },
      (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
