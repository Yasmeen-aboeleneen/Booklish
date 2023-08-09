import 'package:free_books/Features/Home/Domain/Entities/Book_Entity.dart';

abstract class FetchMostPopularBooksState {}

class FetchMostPopularBooksInitial extends FetchMostPopularBooksState {}

class FetchMostPopularBooksLoading extends FetchMostPopularBooksState {}

class FetchMostPopularBooksFailure extends FetchMostPopularBooksState {
  final String errorMessege;
  FetchMostPopularBooksFailure(
    this.errorMessege,
  );
}

class FetchMostPopularBooksSuccess extends FetchMostPopularBooksState {
  final List<BookEntity> books;
  FetchMostPopularBooksSuccess({
    required this.books,
  });
}
