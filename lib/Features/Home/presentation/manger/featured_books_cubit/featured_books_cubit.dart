import '../../../Domain/UseCases/Fetch_FeaturedBooks_UseCase.dart';
import 'featured_books_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBookState> {
  FeaturedBooksCubit(this.featuredBooksUseCase) : super(FeaturedBooksInitial());

  final FetchFeaturedBooksUseCase featuredBooksUseCase;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    var result = await featuredBooksUseCase.Call();
    result.fold((Failure) {
      emit(FeaturedBooksFailure(Failure.messege));
    }, (books) {
      emit(FeaturedBooksSuccess(books: books));
    });
  }
}
