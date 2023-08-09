import 'package:free_books/Core/Utils/Api_service.dart';
import 'package:free_books/Core/Utils/Functions/SaveData.dart';
import 'package:free_books/Features/Home/Data/Models/book_model/book_model.dart';

import '../../../../constants.dart';
import '../../Domain/Entities/Book_Entity.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntity>> FetchFeaturedBooks({int pageNumber=0});
  Future<List<BookEntity>> FetchMostPopularBooks({int pageNumber=0});
}

class HomeRemoteDataSourceImplementation extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImplementation(this.apiService);
  @override
  Future<List<BookEntity>> FetchFeaturedBooks({int pageNumber=0}) async {
    var Data = await apiService.get(
        endPoint: 'volumes?Filtering=free-ebooks&q=AllBooks&startIndex=${pageNumber * 10}');

    List<BookEntity> books = getBooksList(Data);
    SaveBooksData(books, Kfeaturedbooks);
    return books;
  }

  @override
  Future<List<BookEntity>> FetchMostPopularBooks({int pageNumber=0}) async {
    var Data = await apiService.get(
        endPoint:
            'volumes?Filtering=free-ebooks&q=AllBooks&startIndex=${pageNumber *10}&Sorting=newest');

    List<BookEntity> books = getBooksList(Data);
    SaveBooksData(books, KmostPopularbooks);
    return books;
  }
}

List<BookEntity> getBooksList(Map<String, dynamic> Data) {
  List<BookEntity> books = [];
  for (var bookMap in Data['items']) {
    books.add(BookModel.fromJson(bookMap));
  }
  return books;
}
