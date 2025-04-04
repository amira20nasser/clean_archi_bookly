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
    if (pageNumber == 0) {
      emit(FeaturedBooksLoading());
    } else {
      emit(FeaturedBooksPaginationLoading());
    }
    var result = await fetchFeaturedBooksUseCase.execute(pageNumber);
    result.fold(
      (failure) {
        if (pageNumber == 0) {
          emit(FeaturedBooksFailure(failure.message));
        } else {
          emit(FeaturedBooksPaginationFailure(failure.message));
        }
      },
      (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
