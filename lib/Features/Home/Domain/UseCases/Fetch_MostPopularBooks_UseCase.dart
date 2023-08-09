import 'package:dartz/dartz.dart';
import 'package:free_books/Core/Errors/Failure.dart';
import 'package:free_books/Features/Home/Domain/Entities/Book_Entity.dart';
import 'package:free_books/Features/Home/Domain/Repo/Home_Repo.dart';

import 'UseCase.dart';

class FetchMostPopularUseCase extends UseCase<List<BookEntity>, int> {
  final HomeRepo homeRepo;

  FetchMostPopularUseCase(this.homeRepo);

  @override
  Future<Either<Failure, List<BookEntity>>> Call(
      [int pageNumber=0]) async {
    return await homeRepo.FetchMostPopularBooks(pageNumber: pageNumber);
  }
}

class NoParameter {}
