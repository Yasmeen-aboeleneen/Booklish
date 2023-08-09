import '../../../Domain/UseCases/Fetch_FeaturedBooks_UseCase.dart';
import 'featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBookState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks({int pageNumber=0}) async {
    emit(FeaturedBooksLoading());
    var result = await featuredBooksUseCase.Call(pageNumber);
    result.fold((Failure) {
      emit(FeaturedBooksFailure(Failure.messege));
    }, (books) {
      emit(FeaturedBooksSuccess(books: books));
    });
  }
}
