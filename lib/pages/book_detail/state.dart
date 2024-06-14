import 'package:get/get.dart';
import 'package:origin_novel/database/models/models.dart';

class BookDetailState {
  late BookInfo bookInfo;

  BookDetailState() {
    bookInfo = Get.arguments as BookInfo;
  }
}
