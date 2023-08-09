import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:free_books/Core/Errors/Failure.dart';
import 'package:free_books/Features/Home/Data/DataSources/HomeLocal_DataSource.dart';
import 'package:free_books/Features/Home/Data/DataSources/HomeRemote_DataSource.dart';
import 'package:free_books/Features/Home/Domain/Entities/Book_Entity.dart';
import 'package:free_books/Features/Home/Domain/Repo/Home_Repo.dart';

class HomeRepoImplementation extends HomeRepo {
  final HomeLocalDataSource homeLocalDataSource;
  final HomeRemoteDataSource homeRemoteDataSource;

  HomeRepoImplementation(
      {required this.homeLocalDataSource, required this.homeRemoteDataSource});

  @override
  Future<Either<Failure, List<BookEntity>>> FetchFeaturedBooks() async {
    try {
      var booksList = await homeLocalDataSource.FetchFeaturedBooks();
      if (booksList.isNotEmpty) {
        return right(booksList);
      }
      var books = await homeRemoteDataSource.FetchFeaturedBooks();
      return Right(books);
    } catch (ex) {
      if (ex is DioException) {
        return left(ServerFailure.fromDioException(ex));
      }
      return left(ServerFailure(ex.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookEntity>>> FetchMostPopularBooks() async {
    try {
      List<BookEntity> books;

      books = await homeLocalDataSource.FetchMostPopularBooks();
      if (books.isNotEmpty) {
        return right(books);
      }
      books = await homeRemoteDataSource.FetchMostPopularBooks();
      return Right(books);
    } catch (ex) {
      if (ex is DioException) {
        return left(ServerFailure.fromDioException(ex));
      }
      return left(ServerFailure(ex.toString()));
    }
  }
}
