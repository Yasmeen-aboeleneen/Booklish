import 'package:dartz/dartz.dart';
import 'package:free_books/Core/Errors/Failure.dart';
import 'package:free_books/Features/Home/Domain/Entities/Book_Entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<BookEntity>>> FetchFeaturedBooks();
  Future<Either<Failure, List<BookEntity>>> FetchMostPopularBooks();
}
