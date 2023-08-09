import 'package:hive/hive.dart';

import '../../../Features/Home/Domain/Entities/Book_Entity.dart';

void SaveBooksData(List<BookEntity> books, String boxName) {
  var box = Hive.box<BookEntity>(boxName);
  box.addAll(books);
}
