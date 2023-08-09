import 'package:dartz/dartz.dart';
import 'package:free_books/Core/Errors/Failure.dart';
import 'package:free_books/Features/Home/Domain/Entities/Book_Entity.dart';
import 'package:free_books/Features/Home/Domain/Repo/Home_Repo.dart';

import 'UseCase.dart';

class FetchFeaturedBooksUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;

  FetchFeaturedBooksUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> Call(
      [int pageNumber=0]) async {
    return await homeRepo.FetchFeaturedBooks(pageNumber: pageNumber);
  }
}

class NoParameter {}
