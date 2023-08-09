import 'package:free_books/constants.dart';
import 'package:hive/hive.dart';

import '../../Domain/Entities/Book_Entity.dart';

abstract class HomeLocalDataSource {
  List<BookEntity> FetchFeaturedBooks();
  List<BookEntity> FetchMostPopularBooks();
}

class HomeLocalDataSourceImplementation extends HomeLocalDataSource {
  @override
  List<BookEntity> FetchFeaturedBooks() {
    var box = Hive.box<BookEntity>(Kfeaturedbooks);
    return box.values.toList();
  }

  @override
  List<BookEntity> FetchMostPopularBooks() {
    var box = Hive.box<BookEntity>(KmostPopularbooks);
    return box.values.toList();
  }
}
