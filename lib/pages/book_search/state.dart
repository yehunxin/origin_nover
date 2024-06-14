import 'package:isar/isar.dart';

import '../../../database/app_database.dart';
import '../../../database/models/models.dart';

class BookSearchState {
  late Map<String, List<BookInfo>> searchBookInfoMap;
  late List<BookSearchInfo> bookSearchInfos;
  final Isar _isar = AppDatabase.isarInstance;
  late List<BookInfo> bookInfoList;

  BookSearchState() {
    bookInfoList = [];
    bookSearchInfos = _isar.bookSearchInfos.where().findAll();
    searchBookInfoMap = {};
  }
}
