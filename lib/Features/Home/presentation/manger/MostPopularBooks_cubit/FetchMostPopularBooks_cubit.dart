import 'package:free_books/Features/Home/presentation/manger/MostPopularBooks_cubit/FetchMostPopularBooks_state.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Domain/UseCases/Fetch_MostPopularBooks_UseCase.dart';

class fetchMostPopularBooksCubit extends Cubit<FetchMostPopularBooksState> {
  fetchMostPopularBooksCubit(this.fetchMostPopularBooksUseCase)
      : super(FetchMostPopularBooksInitial());

  final FetchMostPopularUseCase fetchMostPopularBooksUseCase;

  Future<void> fetchMostPopularBooks() async {
    emit(FetchMostPopularBooksLoading());
    var result = await fetchMostPopularBooksUseCase.Call();
    result.fold((Failure) {
      emit(FetchMostPopularBooksFailure(Failure.messege));
    }, (books) {
      emit(FetchMostPopularBooksSuccess(books: books));
    });
  }
}
