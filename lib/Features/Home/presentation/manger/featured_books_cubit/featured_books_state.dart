import 'package:free_books/Features/Home/Domain/Entities/Book_Entity.dart';

abstract class FeaturedBookState {}

class FeaturedBooksInitial extends FeaturedBookState {}

class FeaturedBooksLoading extends FeaturedBookState {}

class FeaturedBooksFailure extends FeaturedBookState {
  final String errorMessege;
  FeaturedBooksFailure(
    this.errorMessege,
  );
}

class FeaturedBooksSuccess extends FeaturedBookState {
  final List<BookEntity> books;
  FeaturedBooksSuccess({
    required this.books,
  });
}
